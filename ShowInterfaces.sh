#!/bin/bash
clear
echo " "
allIPS=`/sbin/ifconfig |grep -B1 "inet addr" |awk '{ if ( $1 == "inet" ) { print $2 } else if ( $2 == "Link" ) { printf "%s:" ,$1 } }' |awk -F: '{ print $1 ": " $3 }'`
echo " "
echo "Interfaces IPs"
echo " "
echo "$allIPS"
echo " "
