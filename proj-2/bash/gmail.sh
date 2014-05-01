user="testuser" #Your username
pass="testpass" #Your password
touch mails
wget -quiet https://mail.google.com/mail/feed/atom --user=$user --password=$pass -O mails
size=`ls -l mails | awk '{print $5}'`
if (( "$size" == "0" ))
then
    echo "Wrong username or password"
    kill -9 $$      #Kill the script
fi 
newmail=`cat mails | egrep -o "<fullcount>." | awk '$0=$NF' FS=`        #Get the number of unread mails
if [ -z $newmail ]          #If the variable does not exist (no new mails)
then
    echo "No new mail!"
    echo -n '0' > /dev/ttyUSB0
else
    echo "New mail!"
    echo -n '1' > /dev/ttyUSB0
fi
rm -rf mails
