//Taken from example - Digital Blink without Delay
//This will make the led at pin #13 keep lit up when it receives a message
int ledPin = 13;
void setup() {
  Serial.begin(9600);       //Set up serial at baud rate 9600
  pinMode(ledPin,OUTPUT);       //take dig. pin 13 as output
  
}
void loop() {
  if (Serial.available() > 0) {     //If a message is sent on serial
     char value = Serial.read();        
     if(value == '1') {
           digitalWrite(ledPin,HIGH);       //light it up
     }
     else {
         digitalWrite(ledPin,LOW);          //turn it off
     }
  }
  delay(1000);          //add a delay of 1000ms
}
