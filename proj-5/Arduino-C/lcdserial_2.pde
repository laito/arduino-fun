//Modified version of previous example to include button input
#include <LiquidCrystal.h>

// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(12, 11, 2, 3, 4, 5);
const int buttonPin = 8;        //Attach button pin to DIGITAL PIN #8
int buttonState = 0;            //State of button (high or low)
void setup(){
    // set up the LCD's number of columns and rows: 
  lcd.begin(16, 2);
  // initialize the serial communications:
  Serial.begin(9600);

}

void loop()
{
  // when characters arrive over the serial port...
 buttonState = digitalRead(buttonPin);
 if (buttonState == HIGH) {
 Serial.write("change\r\n");        //Send signal to change the song
 }
 if (Serial.available() ) {
    // wait a bit for the entire message to arrive
    delay(100);
    // clear the screen
    lcd.clear();

    // read all the available characters
    while (Serial.available() > 0) {
      // display each character to the LCD
      char text = Serial.read();
      lcd.write(text);

    }
  }
}
