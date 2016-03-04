#/!/bin/bash

# This command will obtain the external IP from the Active Interface
clear
echo "";
echo -n "Your External IP: ";
wget -qO- http://ipecho.net/plain;
echo " "; echo " "