Arduino Project #2

AIM: Make a simple GMail Notifier (LED blinks when there is a new mail)

Requirements:

A GMail account (duh)
Arduino Board (Duemilanove used in the experiment)
LED

Steps:
1. Attach the arduino board to the computer using usb and make sure that the serial port in the bash script is the same as the actual one ('/dev/ttyUSB0')
2. Upload the serial.pde script in Arduino-C to the board using Arduino IDE.
3. Put the bash script in crond to run to check for mails at the interval you prefer.

The LED at PIN 13 of arduino will start blinking if there is a new mail.
