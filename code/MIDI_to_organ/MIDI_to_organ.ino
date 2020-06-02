#include <frequencyToNote.h>
#include <MIDIUSB.h>
#include <MIDIUSB_Defs.h>
#include <pitchToFrequency.h>
#include <pitchToNote.h>
#define UP_PIN 24
#define DOWN_PIN 28

/* beginning work on making the USBMIDI send to the arduino UNO and run the
    pipes. Transmission specifications:
      The first bit of the transmission is on or off. The rest of the seven
      are the note number. 1 _ _ _  _ _ _ _ is on, 0 _ _ _  _ _ _ _ is off.
      127 (0b01111111) is a general error code, to be ignored 255 (0b11111111)
      is a all off command
*/

void setup() {
  // put your setup code here, to run once:
  SerialUSB.begin(31250);
  Serial1.begin(57600);
  pinMode(UP_PIN, INPUT);
  pinMode(DOWN_PIN, INPUT);
  //  while (!SerialUSB);
  delay(1000);
//  SerialUSB.println("Starting");
}

byte offset = 43;

midiEventPacket_t rx;
byte up_bool = 1;
byte down_bool = 1;

void loop() {
  // put your main code here, to run repeatedly:
  rx = MidiUSB.read();
  if (rx.header != 0)
  {
    //    SerialUSB.println(midi_to_byte(rx, 0), DEC);

//    send_byte(midi_to_byte(rx, 40));
    Serial1.write(midi_to_byte(rx, offset));
  }
//  if (up_bool && (digitalRead(UP_PIN) == LOW))
//  {
//    up_bool = 0;
//  }
//  if (down_bool && (digitalRead(DOWN_PIN) == LOW))
//  {
//    down_bool = 0;
//  }
//  if (!up_bool && (digitalRead(UP_PIN) == HIGH))
//  {
//    offset++;
//    up_bool = 1;
//  }
//  if (!down_bool && (digitalRead(DOWN_PIN) == HIGH))
//  {
//    offset--;
//    down_bool = 1;
//  }
}

/* midi_to_byte
 *  input: midi event packet, offset: the  
 */

byte midi_to_byte(midiEventPacket_t input, byte offset)
{
  byte note = 0;
  if (input.header == 0)
  {
    return 127; // turns off the 127th valve. (should never exist)
  }

  if (input.header == 0x9)//note on
  {
    if (input.byte3 != 0) //not at zero velocity
    {
      note = 0x80;
    }
  }
  else if (input.header == 0xb) //control change
  {
    return 255;
  }
  else if (input.header != 0x8) // not a note off command
  {
    return 127;
  }
  if (input.byte2 >= offset)
  {
    note = note | (input.byte2 - offset);
  }
  else
  {
    return 127;
  }

  return note;
}

void send_byte(byte packet)
{
  if (packet == 0b01111111)
  {
    return;
  }
  Serial1.write(packet);
  return;
}
