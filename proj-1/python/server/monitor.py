#! /usr/bin/env python2
import serial
from time import sleep
while 1:
    monitor = open("/var/www/arduindroid/messages.txt","r")
    command =  monitor.read()
    if command:
        ser = serial.Serial('/dev/ttyUSB0')
        if command == "ON":
            ser.write('1')      #Write to serial
            print command
        else:
            ser.write('0')
            print command
    else:
        pass
    monitor.close()
    open("/var/www/arduindroid/messages.txt","w").close()
    sleep(1)
