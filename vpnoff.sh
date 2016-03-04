#!/bin/bash

# CHECK ROOT ACCESS #
# MAKE SURE ONLY ROOT CAN RUN SCRIPT
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
if [ "$(id -u)" != "0" ]; then
   clear; echo " "; echo " This script must be run as root " 1>&2; echo " "
   exit 1
fi
# CHECK ROOT ACCESS #

clear
VpnID=`/bin/pidof openvpn`
echo " "
echo " VPN will be kill "
echo " "
echo " VPN ID: $VpnID"
echo " "
echo " Press [ENTER] to KILL"
read -r
sudo kill $VpnID
echo " "
echo " Your VPN Connection is OFF"
echo " "
echo " VPN ID: "
echo " "
echo " Press [ENTER] to EXIT"
read -r

