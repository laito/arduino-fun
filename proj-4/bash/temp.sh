#! /bin/bash
while :
do
api=`wget -quiet "http://www.google.com/ig/api?hl=en&weather=Delhi%2C+India" -O temp.txt` #Get weather info
#extract temperature
temp=`cat temp.txt | egrep -o "temp_c data=\"[[:digit:]]+"`
temp=`echo $temp | egrep -o "[[:digit:]]+"` 
#Print temperature to the serial port
echo -n "Temp is: $temp C" > /dev/ttyUSB0
rm -rf temp.txt
sleep 5
done
