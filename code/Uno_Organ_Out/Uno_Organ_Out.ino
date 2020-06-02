#define VALVE_NUM 40
#define SERIALPIN 9
#define SRCLKPIN 10
#define RCLKPIN 11

typedef struct _node node;
struct _node{
  byte valve;
  node* next;
};

node *valve_list = NULL;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(57600);
  pinMode(SERIALPIN, OUTPUT);
  pinMode(SRCLKPIN, OUTPUT);
  pinMode(RCLKPIN, OUTPUT);
  Serial.println("Starting Recevier");
  set_valves(valve_list, SERIALPIN, SRCLKPIN, RCLKPIN);
}



void loop() {
  // put your main code here, to run repeatedly:
  valve_list = note_read(valve_list);
  set_valves(valve_list, SERIALPIN, SRCLKPIN, RCLKPIN);

}

/* sorted_insert
 * input:
 *  head: the head of the list being added to
 *  valve: the number of the valve that should be played (added to list)
 * output: pointer to the new head of the list
 * ordered from smallest to largest ex: 0, 2, 3, 5, 9
 */
node* sorted_insert(node* head, byte valve)
{
  if (valve >= VALVE_NUM)
  {
    return head;
  }
  if (head == NULL)
  {
    node *new_node = (node*)malloc(sizeof(node));
    new_node->valve = valve;
    new_node->next = NULL;
//    Serial.println("added first node");
    return new_node;
  }
  if (head->valve < valve)
  {
    head->next = sorted_insert(head->next, valve);
    return head;
  }
  if (head->valve == valve)
  {
    return head;
//    Serial.println("valve to be added already in list");
  }
  if (head->valve > valve)
  {
    node *new_node = (node*)malloc(sizeof(node));
    new_node->valve = valve;
    new_node->next = head;
//    Serial.println("adding valve/node");
    return new_node;
  }
  return NULL;
}

/* remove_node
 * input: the beginning of the list of valves to be played, and the valve to be
 *  removed
 * output: the new head pointer of the list after the valve given has been
 *  removed
 */
node* remove_node(node* head, byte valve)
{
  if (head == NULL)
  {
    return head;
  }
  if (valve >= VALVE_NUM)
  {
    return head;
  }
  if (head->valve == valve)
  {
    node *next_in_line = head->next;
    free(head);
    return next_in_line;
  }
  else
  {
    head->next = remove_node(head->next, valve);
    return head;
  }
}

/* note_read
 *  takes a pointer to the head of the list of valves, then adds or removes
 *  valves to the list depending in input from the serial link. If the value
 *  is 0-126 it is a valve off command, if it is 128-254 it is a valve on
 *  command, if it is 127 it is ignored as an error from the sender, if it is
 *  255 it is considered an all off command.
 */

node* note_read(node* head)
{
  if (Serial.available() > 0)
  {
    Serial.println("reading note:");
    byte note_change = Serial.read();
    Serial.println(note_change, DEC);
    node *new_list = NULL;
    if ((note_change > 127) && note_change != 255)
    {
      note_change = note_change - 128;
      Serial.print("add note: ");
      Serial.println(note_change, DEC);
      new_list = sorted_insert(head, note_change);
    }
    else if (note_change == 127)
    {
      return head;
    }
    else if (note_change == 255)
    {
      while (head != NULL) // clear the list of valves
      {
        head = remove_node(head, head->valve);
      }
    }
    else
    {
      Serial.print("remove note: ");
      Serial.println(note_change, DEC);
      new_list = remove_node(head, note_change);
    }
//    print_valve_list(new_list);
    if (new_list == NULL)
    {
//      Serial.println("list empty");
    }
    set_valves(new_list, SERIALPIN, SRCLKPIN, RCLKPIN);
    return new_list;
  }
  return head;
}

// puts a LOW into the shift register
void step_in_low(byte serial, byte srclock)
{
  digitalWrite(serial, LOW);
  digitalWrite(srclock, HIGH);
  delayMicroseconds(1);
  digitalWrite(srclock, LOW);
  delayMicroseconds(1);
}
// puts a HIGH into the shift register
void step_in_high(byte serial, byte srclock)
{
  delayMicroseconds(1);
  digitalWrite(serial, HIGH);
  delayMicroseconds(5);
  digitalWrite(srclock, HIGH);
  delayMicroseconds(5);
  digitalWrite(srclock, LOW);
  digitalWrite(serial, LOW);
  delayMicroseconds(1);
}

/* set_valves
 * input:
 *  head: the beginning of the list of valves to be played
 *  serial: the serial output pin to the shift register chain
 *  srclock: the shift register clock signal;
 *  rclock: the register clock, what updates the output of all of the registers
 */
void set_valves(node* head, byte serial, byte srclock, byte rclock)
{
  static byte current_pos = 0;
//  print_valve_list(head);
//  Serial.println(current_pos);
  if (head == NULL)
  {
//    Serial.println("done setting valves");
//    Serial.println(current_pos, DEC);
    for (current_pos; current_pos < VALVE_NUM; current_pos++)
    {
      step_in_low(serial, srclock); // fills out remainder of shift register
    }
    digitalWrite(rclock, HIGH); // update output of shift registers
    delayMicroseconds(5);
    digitalWrite(rclock, LOW);
    delayMicroseconds(5);
    current_pos = 0;
    return;
  }
//  Serial.println(head->valve);
  for (current_pos; current_pos < head->valve; current_pos++)
  {
    step_in_low(serial, srclock);
  }
  // step in a HIGH signal
  step_in_high(serial, srclock);
//  Serial.print("set valve to on: ");
//  Serial.println(current_pos);
  current_pos++;
  set_valves(head->next, serial, srclock, rclock);
}

/* print_valve_list
 * input: head: the beginning of the list that is to be printed to serial
 */
void print_valve_list(node* head)
{
  if (head == NULL)
  {
    Serial.println("END");
    return;
  }
  Serial.print(head->valve, DEC);
  Serial.print(", ");
  print_valve_list(head->next);
} 
