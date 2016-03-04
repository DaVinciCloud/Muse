#!/bin/bash

###############################################################################
# CHECK - SUDO
###############################################################################
# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
  echo " "; echo " This script must be run as root "; echo " "; 1>&2; exit 1
fi

WLANIP=`(/sbin/ifconfig wlan0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}')`
ETHIP=`(/sbin/ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}')`
TUNIP=`(/sbin/ifconfig tun0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}')`

clear
echo ""
echo "Clean Slate"
echo ""
echo "Press [ENTER] to Continue"
read -r

clear
echo ""
echo "Internal WIFI IP:" $WLANIP
echo ""
echo "Internal LAN  IP:" $ETHIP
echo ""
echo "Internal TUN  IP:" $TUNIP
echo ""

if [ $WLANIP ]
	then echo "You have a WI-FI connection"
	echo ""
	else echo "You don't have WI-FI connection"
    echo "" 	
fi

if [ $ETHIP ]
	then echo "You have a LAN connection"
	echo ""
	else echo "You don't have LAN connection" 	
    echo ""
fi

if [ $TUNIP ]
	then echo "You have a VPN connection"
	echo ""	
	else echo "You don't have VPN connection" 	
    echo ""
fi

echo "Thank For Setting Up your VPN"
echo " "
echo "Press [ENTER] to EXIT"
read -r


