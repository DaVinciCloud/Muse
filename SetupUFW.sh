#!/bin/bash 

#
# OpenVPN Los Angeles Main
#   IP:		45.32.64.117 
#   Proto:	1194 udp / 443 tcp
#   This VPN Server only allows two similtaneous connections
#
# UFW Setup Link: https://goo.gl/k6xoq4
#

###############################################################################
# CHECK - SUDO
###############################################################################
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
# Make sure only root can run the script
clear
if [[ $EUID -ne 0 ]]; then
  echo " "; echo " This script must be run as root " 1>&2; echo""; exit 1
fi
echo ""
###############################################################################


PRENT="Press [ENTER] to continue"
UFWINST=`(/bin/which ufw)`

if [[ $UFWINST ]];
	then
		echo " UFW is Installed in your System";
	else
		echo " UFW is not present in your System";
		echo " Please Install UFW and run this script again";
		echo ""; exit 1
fi

clear
echo " "
echo " VPN-Kill-Swith: "
echo "   This script sets rules for UFW as Kill Switch "
echo "   to only allow internet connection once VPN is ON "
echo -n "  " $PRENT ""
read -r 

clear
echo ""
echo " TUN Interface:"
echo "   Adding rule to allow internet connection "
echo "   only through TUN interface"
echo -n "  " $PRENT ""
read -r
##sudo ufw allow out on tun0

#sudo ufw allow out on eth0 to 192.168.0.0/24
#sudo ufw allow out on eth0 to 192.168.1.0/24
#sudo ufw allow out on eth0 to 192.168.2.0/24

#sudo ufw allow out on wlan0 to 192.168.0.0/24
#sudo ufw allow out on wlan0 to 192.168.1.0/24
#sudo ufw allow out on wlan0 to 192.168.2.0/24

clear
echo ""
echo " ETH and WLAN Interface:"
echo "   Adding Rule to allow VPN connection only "
echo "   through interface eth0 and wlan0"
echo -n "  " $PRENT ""
read -r
#sudo ufw allow out on eth0 to 45.32.64.117 port 1194 proto udp
#sudo ufw allow out on wlan0 to 45.32.64.117 port 1194 proto udp
#sudo ufw allow out on eth0 to 45.32.64.117 port 443 proto tcp
#sudo ufw allow out on wlan0 to 45.32.64.117 port 443 proto tcp

clear
echo ""
echo " DENY In / Out"
echo "   Adding Rule to Deny Incoming and Outgoing "
echo "   connentions that are not going through "
echo "   tun interface provided by VPN connection "
echo -n "  " $PRENT ""
read -r
#sudo ufw default deny incoming
#sudo ufw default deny outgoing

clear
echo ""
echo " Uncomplicated Fire Wall "
echo "   Your UFW will be turn ON "
echo -n "  " $PRENT ""
#sudo ufw enable

clear
echo ""
echo " VPN-Kill-Swith is ACTIVE "
echo -n "  " $PRENT ""
read -r
echo ""