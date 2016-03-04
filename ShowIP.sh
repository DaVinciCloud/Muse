#!/bin/bash
# $1 will be replace with the interface that you type after the command:
# sudo bash ShowIP.sh eth0
# sudo bash ShowIP.sh wlan0
# sudo bash ShowIP.sh tun0
# If no interface is entered,
# it will print all the interfaces that have assigned IP.
clear
internalIP=`/sbin/ifconfig $1 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'`
echo " "
echo " IP for Interface $1 : $internalIP"
echo " "
