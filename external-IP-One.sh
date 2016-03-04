#!/bin/bash
clear
getExtIP=`lynx --dump http://ipecho.net/plain`
echo " "
#echo " Type [ ENTER ] to get External IP"
#read -r
echo "Your External IP is:"$getExtIP
echo " "
