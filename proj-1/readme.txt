Arduino Project #1

AIM: To control an arduino device using android phone via WiFi

Requirements:
A WiFi Connection
An Android Phone (Samsung Galaxy Ace was used in the experiment)
An Arduino board (Dueminalove was used in the experiment)
A Web Server with PHP support

Steps:

1. Put the "arduindroid" folder in your webroot (Default: "/var/www" or "/srv/http")
2. Install "Python for Android" and "Android Scripting Environment (sl4a)" on your Android phone"
3. Upload the python files in python/android to your android phone in - "sdcard/sl4a/scripts"
4. Make sure the server ip of the machine running the webserver matches with that in the python scripts.
5. Upload the pde file to your arduino box.
6. Run the webserver and the python script for the server. Make sure you have the permissions to write to the messages.txt on the server.
7. Attach the arduino kit to the PC using a usb cable and add a led pin at digital pin #13.
8. Run the python script on your android phone to control the led on arduino.
