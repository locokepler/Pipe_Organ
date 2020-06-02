//#include <frequencyToNote.h>
#include <MIDIUSB.h>
#include <MIDIUSB_Defs.h>
//#include <pitchToFrequency.h>
//#include <pitchToNote.h>
#include "valve_control.h"

//void build_rank(rank* rank; byte valves, byte offset, byte serial, byte srclk, byte rclk);

rank flutes;

void setup() {
  SerialUSB.begin(31250);
  build_rank(&flutes, 40, 43, 24, 26, 28);
  pinMode(flutes.serial, OUTPUT);
  pinMode(flutes.srclk, OUTPUT);
  pinMode(flutes.rclk, OUTPUT);
}

midiEventPacket_t rx;

void loop() {
  rx = MidiUSB.read();
  if (rx.header != 0) {
    if ((rx.header == 0x9) && (rx.byte3 != 0)) {
      // note on with some volume
      note_read(&flutes, rx.byte2);
    } else if (rx.header == 0xB) {
      // control change likely an all off command
      if ((rx.byte2 == 120) || (rx.byte2 == 123)) {
        clear_notes(&flutes);
      }
    } else if ((rx.header == 0x8) || ((rx.header == 0x9) && (rx.byte3 == 0))) {
      // note off command
      note_read(&flutes, rx.byte2 | 0x80);
    }
  }
}

/*
 * build_rank:
 * fills in the rank structure that is pointed to.
 * puts in valve#, offset, and the three control pins
 */
void build_rank(rank* rank, byte valves, byte offset, byte serial, byte srclk, byte rclk) {
  rank->valve_num = valves;
  rank->offset = offset;
  rank->serial = serial;
  rank->srclk = srclk;
  rank->rclk = rclk;
  rank->head = NULL;
}
