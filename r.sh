#!/bin/bash


service network-manager restart

echo -n "Do you want to aircrack ?Yes(1) or No(2). Enter 1 or 2 :"

read r

if [ $r -eq 1 ]

then

	echo -n "DO YOU WANT TO INSTALL A CUSTOM WORDLIST CREATION TOOL? Press 1 for YES and 2 for NO :"
	
	read y

	if [ $y -eq 1 ]

	then 
		echo "installing 

   ___   ___ _   _____   _  ______________    _      ______  ___  ___  __   ______________
  / _ | / _ \ | / / _ | / |/ / ___/ __/ _ \  | | /| / / __ \/ _ \/ _ \/ /  /  _/ __/_  __/
 / __ |/ // / |/ / __ |/    / /__/ _// // /  | |/ |/ / /_/ / , _/ // / /___/ /_\ \  / /   
/_/ |_/____/|___/_/ |_/_/|_/\___/___/____/   |__/|__/\____/_/|_/____/____/___/___/ /_/   

					BY AVISHEK "
		cd /root
		git clone https://github.com/CHAOSandORDER/Advancedwordlist.git
		clear
		echo -n " IF YOU WANT TO RUN THE TOOL ENTER 1 ELSE PRESS 2: "
		
		read g
			
			if [ $g -eq 1 ]
				
			then

				cd /root  
				cd Advancedwordlist
				chmod +x run.sh
				./run.sh

			fi

			if [ $g -eq 2 ]

			then

				read -p "Enter path to wordlist :" l
				read -p "Enter bssid :" bs
				read -p "Enter path to handshake.cap :" c
				aircrack-ng -w $l -b $bs $c


			fi

	fi

	if [ $y -eq 2 ]

	then

		echo -n "Do you want to run Advancedwordlist? Press 1 to run else press ENTER:"
		read d
		if [ d -eq 1 ]
		then
			cd /root  
			cd Advancedwordlist
			chmod +x run.sh
			./run.sh
		fi

		read -p "Enter path to wordlist :" l
		read -p "Enter bssid :" bs
		read -p "Enter path to handshake.cap :" c
		aircrack-ng -w $l -b $bs $c
	fi

fi 

if [ $r -eq 2 ]

then
	
	exit

fi
exit