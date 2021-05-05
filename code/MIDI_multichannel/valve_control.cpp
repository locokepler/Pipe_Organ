#include "valve_control.h"
#include "Arduino.h"

#define DELAY 10

/* fills out a rank with the needed data, and sets up the pins associcated with it
*  rank is the given rank pointer that is being defined
*  valves: the number of valves in the rank
*  offset: the offset from midi 0 that the lowest note is
*  serial: the serial output pin
*  srclk: the shift register clock output pin
*  rclk: the register clock output pin (for updating output of shift register)
*/
void build_rank(rank* rank, byte valves, byte offset, byte serial, byte srclk, byte rclk)
{
  if (rank == NULL) {
    return;
  }
  rank->valve_num = valves;
  rank->offset = offset;
  rank->serial = serial;
  rank->srclk = srclk;
  rank->rclk = rclk;
  rank->head = NULL;
  pinMode(serial, OUTPUT);
  pinMode(srclk, OUTPUT);
  pinMode(rclk, OUTPUT);
}

/* add_to_organ: adds a rank to the list of organ ranks. This list can then
* have things done to it, such as pushing the notes out to the shift registers
*/

organ* add_to_organ(organ* header, rank* rank) {
  if (rank == NULL) {
    return NULL;
  }
  if (header == NULL) {
    header = (organ*)malloc(sizeof(organ));
    header->rank = rank;
    header->next = NULL;
    return header;
  } else {
    header->next = add_to_organ(header->next, rank);
    return header;
  }
}

/*
* sorted_insert:
* input: head -- the top of the list of valves
* valve_num -- the number of valves in the rank, so the top valve that can be added
* valve-- the valve to be added to the list
*
* puts a new valve into the list so that the list is ordered from
* lowest at the beginning to highest at the end
*/

node* sorted_insert(node* head, byte valve_num, byte valve) {
  if (valve >= valve_num)
  return head;
  if (head == NULL) {
    node* new_node = (node*)malloc(sizeof(node));
    new_node->valve = valve;
    new_node->next = NULL;
    return new_node;
  }
  if (head->valve < valve) {
    head->next = sorted_insert(head->next, valve_num, valve);
    return head;
  }
  if (head->valve == valve) {
    return head;
  }
  if (head->valve > valve) {
    node* new_node = (node*)malloc(sizeof(node));
    new_node->valve = valve;
    new_node->next = head;
    return new_node;
  }
  return NULL;
}

/*
* remove node:
* removes a node in the list of valves that matches the valve num
* given
*/

node* remove_node(node* head, byte valve) {
  if (head == NULL) {
    return head;
  }
  if (head->valve == valve) {
    node* next_in_line = head->next;
    free(head);
    return next_in_line;
  }
  head->next = remove_node(head->next, valve);
  return head;
}

/* note_read
* takes a note and the rank it should be run with, and adds/removes that note
* from the rank's list of notes. If the note is 0-127 it is turned on, if it
* is 128-255 the note is turned off. The note is sent without an offset, that
* is applied within note_read. DOES NOT HANDLE ALL OFF! That is a seperate
* function, unlike in earlier iterations.
*/

void note_read(rank* rank, byte note) {
  byte effective_note = note - rank->offset;
  if (note < 0x80) {
    rank->head = sorted_insert(rank->head, rank->valve_num, effective_note);
  } else {
    rank->head = remove_node(rank->head, effective_note & 0x7F);
  }
}

/* clear_notes
* empties the list of notes in the rank
*/
void clear_notes(rank* rank) {
  while (rank->head != NULL) {
    remove_node(rank->head, rank->head->valve);
  }
}
// just defining these early becaues the code is at the bottom
void set_valves(node* head, byte valve_num, byte serial, byte srclock, byte rclock);
void step_in_low(byte serial, byte srclock);
void step_in_high(byte serial, byte srclock);
unsigned long output_timing(byte time, rank* rank);

/* push_notes
* pushes all of the notes that the organ has listed to the connections listed
* in the ranks
*/
void push_notes(organ* organ) {

}
void push_notes(rank* rank) {
  set_valves(rank->head, rank->valve_num, rank->serial, rank->srclk, rank->rclk);
}

struct _timing_out{
  unsigned long time;
  byte step;
  byte pos;
  node* head;
};

typedef struct _timing_out timing;

/* output_timing: sets the pins to high and low as needed, not changing until
* after the given delay has elapsed. If the delay has not it quickly skips
* itself so as to let other stops get on with it.
*/

timing* output_timing(timing* timing, rank* rank) {
  time = timing->time;
  step = timing->step;
  pos = timing->pos;
  head = timing->head;
  // step 0 is setting serial
  // step 1 is setting clock,
  // step 2 is dropping clock and serial
  // step 3 is done with all handling, so skip
  if (rank == NULL) {
    return timing;
  }
  if (step == 3) {
    return timing;
  }
  unsigned long current_time = micros();
  if (timing->time > current_time) {
    // time overflow protection, if the time overflows then we reset the
    // current timing.
    timing->time = current_time;
  }
  // if not reached delay time yet
  if (timing->time + DELAY <= current_time) {
    return timing;
  }
  //serial set step
  if (!step) {
    // if we are still within the set of pipes
    // expects that serial is already low at this point!
    if (pos < rank->valve_num) {
      // if out of notes to write, keep serial low
      if (head != NULL) {
        // serial only goes high if on correct note
        if (head->valve == pos) {
          digitalWrite(rank->serial, HIGH);
          timing->head = head->next; // move to next note in list of notes to play
        }
        timing->step = 1;
        timing->time = current_time;
        return (timing)
      }
    } else {
      // done pushing in notes, now to set registers from shift registers
      digitalWrite(rank->rclk, HIGH);
      delayMicroseconds(DELAY);
      digitalWrite(rank->rclk, LOW);
      timing->step = 3;
      return 0;
    }
  }
  // clock
  if (step == 1) {
    digitalWrite(rank->srclk, HIGH);
    timing->step = 2;
    timing->time = current_time;
    return timing;
  }
  // drop serial and srclk
  if (step == 2) {
    digitalWrite(rank->serial, LOW);
    digitalWrite(rank->srclk, LOW);
    timing->step = 0;
    timing->time = current_time;
    timing->pos++;
    return timing;
  }
}

/*
* sets the valves using a shift register for the outputs
* inputs: head of the list of notes to be triggered,
*  valve_num, the number of valves (in the rank), serial: the serial pin,
*  srclock: the shift register clock pin,
*  rclock: the register clock pin (update output)
*  runs using recusive logic, and is directly based on known working code from the uno
*/
void set_valves(node* head, byte valve_num, byte serial, byte srclock, byte rclock) {
  static byte current_pos = 0;
  if (head == NULL)
  {
    for (current_pos; current_pos < valve_num; current_pos++)
    {
      step_in_low(serial, srclock); // fills out remainder of shift register
    }
    digitalWrite(rclock, HIGH); // update output of shift registers
    delayMicroseconds(DELAY);
    digitalWrite(rclock, LOW);
    delayMicroseconds(DELAY);
    current_pos = 0;
    return;
  }
  for (current_pos; current_pos < head->valve; current_pos++)
  {
    step_in_low(serial, srclock);
  }
  // step in a HIGH signal
  step_in_high(serial, srclock);
  current_pos++;
  set_valves(head->next, valve_num, serial, srclock, rclock);
}

// puts a LOW into the shift register
void step_in_low(byte serial, byte srclock)
{
  digitalWrite(serial, LOW);
  digitalWrite(srclock, HIGH);
  delayMicroseconds(DELAY);
  digitalWrite(srclock, LOW);
  delayMicroseconds(DELAY);
}
// puts a HIGH into the shift register
void step_in_high(byte serial, byte srclock)
{
  delayMicroseconds(DELAY);
  digitalWrite(serial, HIGH);
  delayMicroseconds(DELAY);
  digitalWrite(srclock, HIGH);
  delayMicroseconds(DELAY);
  digitalWrite(srclock, LOW);
  digitalWrite(serial, LOW);
  delayMicroseconds(DELAY);
}
