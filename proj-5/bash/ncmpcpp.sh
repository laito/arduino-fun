#! /bin/bash
while :
do
song=`ncmpcpp --now-playing | grep -o "\-.*"`
if (( ${#song} >= 18 )) 
then
echo -n "${song:2:16}aaaaaaaaaaaaaaaaaaaaaa${song:16}" > /dev/ttyUSB0 #Adding dummy characters to make sure the song is wrapped to second line by lcd properly 
else
echo -n "${song:2}" > /dev/ttyUSB0
fi
sleep 1
done
