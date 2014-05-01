use warnings;
use strict;
use Irssi qw(command_bind signal_add signal_stop signal_continue);
use Device::SerialPort;
my $port = Device::SerialPort->new("/dev/ttyUSB0");
$port->databits(8);
$port->baudrate(9600);
$port->parity("none");
$port->stopbits(1);
my $hilight = "mynick";                                 #Your nickname, or anythiing you want to be notified of whenever someone says it
sub privmsg {
my ($server, $data, $nick, $who) = @_;              # Get data 
my ($chan, $text) = split(/ :/, $data, 2);          # from singanl

if ($text =~ $hilight)              #text has our hilight word in it
{
signal_continue($server,$data,$nick,$who);  #continue the signal (irc text)
$port->write("1");      #write to serial port 
}
}
signal_add("event privmsg", "privmsg");
