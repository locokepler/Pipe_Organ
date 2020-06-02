#include <frequencyToNote.h>
#include <MIDIUSB.h>
#include <MIDIUSB_Defs.h>
#include <pitchToFrequency.h>
#include <pitchToNote.h>

typedef struct _node node;

/* rank defines a rank of pipes controlled together, as a single
 *  shift register. Stored in this is the number of valves in the
 *  rank, the offset (distance from the lowest note to midi note
 *  0) and the head pointer to the list of valves that should be
 *  on. Then it also has the values of the control pins of the
 *  rank
 */
typedef struct _rank{
  byte valve_num;
  byte offset;
  byte serial;
  byte srclk;
  byte rclk;
  node* head;
} rank

struct _node{
  byte valve;
  node* next;
}

rank flutes;

void startup() {
  SerialUSB.begin(31250);
  build_rank(&flutes, 40, 43, 24, 26, 28);
  pinMode(flutes.serial, OUTPUT);
  pinMode(flutes.srclk, OUTPUT);
  pinMode(flutes.rclk, OUTPUT);
}

void loop() {
  
}

/*
 * build_rank:
 * fills in the rank structure that is pointed to.
 * puts in valve#, offset, and the three control pins
 */
void build_rank(rank* rank; byte valves, byte offset, byte serial, byte srclk, byte rclk) {
  rank->valve_num = valves;
  rank->offset = offset;
  rank->serial = serial;
  rank->srclk = srclk;
  rank->rclk = rclk;
  rank->head = NULL;
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
    head->next = sorted_insert(head->next, valve);
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

node* remove_node(head* head, byte valve) {
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
