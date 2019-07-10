#!/bin/bash

echo " FIRST CREATE A WORDLIST OR MODIFY YOUR EXISTING ONE AND ENTER THE PATH HERE"
read -p "Enter path to wordlist :" l
read -p "Enter bssid :" bs
read -p "Enter path to handshake.cap :" c
aircrack-ng -w $l -b $bs $c
