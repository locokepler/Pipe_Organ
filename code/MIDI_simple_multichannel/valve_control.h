#include "Arduino.h"
#ifndef Valve_control_h
#define Valve_control_h

typedef struct _node node;

struct _node{
  byte valve;
  node* next;
};

/* rank defines a rank of pipes controlled together, as a single
 *  shift register. Stored in this is the number of valves in the
 *  rank, the offset (distance from the lowest note to midi note
 *  0) and the head pointer to the list of valves that should be
 *  on. Then it also has the values of the control pins of the
 *  rank
 */
struct _rank{
  byte valve_num;
  byte offset;
  byte serial;
  byte srclk;
  byte rclk;
  node* head;
};

typedef struct _rank rank;

void note_read(rank* rank, byte note);

void push_notes(rank* rank);

void clear_notes(rank* rank);

void build_rank(rank* rank, byte valves, byte offset, byte serial, byte srclk, byte rclk);


#endif
