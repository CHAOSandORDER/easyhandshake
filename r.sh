#!/bin/bash



#iwconfig

#echo -n "

#Enter name of interface . E.g 0 for wlan0mon:"

#read in

#if [ $in -eq 0 ]

#then

#	ifconfig wlan0 down
#	iwconfig wlan0 mode managed
#	ifconfig wlan0 up
	
#fi

#if [ $in -eq 1 ]

#then

#	ifconfig wlan1 down
#	iwconfig wlan1 mode managed
#	ifconfig wlan1 up
	
#fi

#if [ $in -eq 2 ]

#then

#	ifconfig wlan2 down
#	iwconfig wlan2 mode managed
#	ifconfig wlan2 up
	
#fi

service network-manager restart

echo -n "Do you want to aircrack ?Yes(1) or No(2). Enter 1 or 2 :"

read r

if [ $r -eq 1 ] 

then
	read -p "Enter path to wordlist :" l
	read -p "Enter bssid :" bs
	read -p "Enter path to handshake.cap :" c
	aircrack-ng -w $l -b $bs $c

elif [ $r -eq 2 ]

then
	exit

else

	exit
fi