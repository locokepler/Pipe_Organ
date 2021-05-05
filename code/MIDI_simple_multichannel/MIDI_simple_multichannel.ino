//#include <frequencyToNote.h>
#include <MIDIUSB.h>
#include <MIDIUSB_Defs.h>
//#include <pitchToFrequency.h>
//#include <pitchToNote.h>
#include "valve_control.h"



rank flutes; // defines a rank of pipes called flutes, this will get more clear definion later

void setup() {
  SerialUSB.begin(31250);
  build_rank(&flutes, 40, 53, 24, 26, 28); // 40 valves, lowest note is 43 above midi 0,
  // serial pin 24, shift register clock 26, register clock 28
//  pinMode(flutes.serial, OUTPUT);
//  pinMode(flutes.srclk, OUTPUT);
//  pinMode(flutes.rclk, OUTPUT);
}

midiEventPacket_t rx; // this is what will hold the midi data

void loop() {
  rx = MidiUSB.read();
  if (rx.header != 0) { //checks the note exists
    if ((rx.header == 0x9) && (rx.byte3 != 0)) {
      // note on with some volume
      // there would be more logic in here if using channel to define stops
      /*
       * example of logic for channel
       * if ((rx.byte1 | 0b1111) == 0) {
       *    note_read(&piano_stop, rx.byte2);
       * }
       */
      note_read(&flutes, rx.byte2); 
    } 
    
    else if (rx.header == 0xB) {
      // control change likely an all off command
      if ((rx.byte2 == 120) || (rx.byte2 == 123)) {
        clear_notes(&flutes);
      }
    }
    
    else if ((rx.header == 0x8) || ((rx.header == 0x9) && (rx.byte3 == 0))) {
      // note off command
      // there would be additional flow control for use of channel
      note_read(&flutes, rx.byte2 | 0x80);
    }
  }
  push_notes(&flutes);
}
