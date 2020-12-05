#!/bin/bash

if ["$1" == ""]
then
echo "   choice network interface !!!"
echo "   syntax:bash ./wlan.sh wlan1 "

else

ifconfig wlan1 down
ifconfig wlan0 down
iwconfig $1 mode monitor
service NetworkManager stop
ifconfig $1 up
iwconfig



airodump-ng $1

fi
