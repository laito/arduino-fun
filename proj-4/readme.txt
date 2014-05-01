Arduino Project #4

AIM: Use the inbuilt LCD library to run some simple script and show temperature of Delhi,India

Since I don't need to use anything special besides what's already in the Examples of Arduino, I'll be using that only.

Steps:

1. Upload the Example - LiquidCrystal->serial to your arduino board.
2. Run the bash script - temp.sh

The 16x2 LCD will now display the temperature of delhi,india which is obtained from google's weather API


BONUS:
A one liner (bash) for giving the current time output to the lcd:
 while :; do echo -n `date +%T` > /dev/ttyUSB0; sleep 1;  done
