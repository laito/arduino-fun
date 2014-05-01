#! /usr/bin/env python2
#monitor...
import sys,serial,commands
from time import *
import time
elapsed = 11
start = time.time()
if __name__ == "__main__":
    ser = serial.Serial('/dev/ttyUSB0')
    while 1:
        count = 0
        x = ser.readline()      #Read serial
        x = x.replace("\r\n","")        #Remove newline feed
        if x=="change":         #If it is the input we want
            if elapsed >= 10:    #The tapping creates a bunch of "change" over serial port, so to make sure it only changes unique taps, the time interval between two matches of "change" on the serial port should be > 10 seconds.
                print "NEXT SONG"
                commands.getstatusoutput('ncmpcpp next')
                start = time.time()
                elapsed = 0
                ser.flush()
                ser.flushInput()
                ser.flushOutput()
                ser.flush()
            else:
                elapsed = time.time() - start
