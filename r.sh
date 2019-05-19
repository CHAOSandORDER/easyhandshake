#!/bin/bash



iwconfig

echo -n "

Enter name of interface . E.g 0 for wlan0mon:"

read in

if [ $in -eq 0 ]

then

	ifconfig wlan0 down
	iwconfig wlan0 mode managed
	ifconfig wlan0 up
	
fi

if [ $in -eq 1 ]

then

	ifconfig wlan1 down
	iwconfig wlan1 mode managed
	ifconfig wlan1 up
	
fi

if [ $in -eq 2 ]

then

	ifconfig wlan2 down
	iwconfig wlan2 mode managed
	ifconfig wlan2 up
	
fi

service network-manager restart