#!/bin/bash

if ["$1" == ""]
then
echo "   choice network interface !!!"
echo "   syntax:bash ./wlan.sh wlan1 "

else

ifconfig wlan1 down
ifconfig wlan0 down
iwconfig $1 mode monitor
ifconfig $1 up
iwconfig

service NetworkManager stop

airodump-ng $1

fi
