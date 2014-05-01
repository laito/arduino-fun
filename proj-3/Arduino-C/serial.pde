//Sample script as the last one
//Instead of staying lit, it will keep blinking when it recieves a message ('1') through serial port
int ledPin = 13;
void setup() {
  Serial.begin(9600);       //Set up serial port at baud rate 9600
  pinMode(ledPin,OUTPUT);       //pin #13 is taken as output
  
}
void loop() {
  if (Serial.available() > 0) {
     char value = Serial.read();    //Read character from serial
     if(value == '1') {
           while (Serial.read() != '0') {       //Keep blinking until '0' is sent
           digitalWrite(ledPin,HIGH);       //light up the pin
           delay(1000);                 // delay 1000ms
           digitalWrite(ledPin,LOW);        //turn it off
           delay(1000);             //delay 1000ms
           }           
     }
     else {
         digitalWrite(ledPin,LOW);          //Turn off LED
     }
  }
  delay(1000);              //delay 1000ms
}
