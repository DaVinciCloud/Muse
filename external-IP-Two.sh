#!/bin/bash
clear
#getExternalIP=
echo " "
echo " curl ipecho.net "
curl http://ipecho.net/plain; echo
echo " curl ifconfig.me "
curl ifconfig.me
echo " wget ipecho.net "
wget -qO- http://ipecho.net/plain
echo " wget ifconfig.me "
wget -q http://ifconfig.me -O – 2>/dev/null ;echo
echo "Your External IP:"
echo " "
