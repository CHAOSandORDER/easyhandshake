#!/bin/bash

echo "                     __      __ .___ ___________.___ 

                          /  \    /  \ |   | \_   _____/  |   |

                          \   \/\/   / |   |  |    __)    |   |
                                                  |
                           \        /  |   |  |   |       |   |
                                                  |
                            \__/\  /   |___|  \___/       |___|

                                 \/                             by AVISHEK





" 

chmod +x w.sh
chmod +x r.sh

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

read -p "Enter a filename :" name

# move into new terminal

gnome-terminal -- "./w.sh"

# airodump target specific

if [ $ans -eq 0 ]

then

	
	airodump-ng --bssid $bs --channel $ch --write /root/Desktop/$name wlan0mon
	
fi

if [ $ans -eq 1 ]

then

	
	airodump-ng --bssid $bs --channel $ch -w /root/Desktop/$name wlan1mon
	
fi

if [ $ans -eq 2 ]

then


	airodump-ng --bssid $bs --channel $ch -w /root/Desktop/$name wlan2mon
	
fi

rm $name-01.csv $name-01.kismet.netxml $name-01.log.csv $name-01.kismet.csv












