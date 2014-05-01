import string
import urllib
import urllib2
import android
serverip='http://192.168.1.10'
baseurl = serverip+'/arduindroid/send.php?msg='
#Set up the dialog box
droid = android.Android()
droid.dialogCreateAlert('Control the LED')
droid.dialogSetPositiveButtonText('ON')
droid.dialogSetNegativeButtonText('OFF')
droid.dialogShow()
choice = droid.dialogGetResponse()
#take user input
turn_on_led = choice.result['which'] == 'positive'

if turn_on_led:
	text2add = 'ON'
else:
	text2add = 'OFF'
url = baseurl+text2add
#Get the url (send the message)
stream = urllib2.urlopen(url)
stream.close()
droid.exit()
