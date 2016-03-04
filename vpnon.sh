#!/bin/bash

# CHECK ROOT ACCESS #
# MAKE SURE ONLY ROOT CAN RUN SCRIPT
# Init
#FILE="/tmp/out.$$"
#GREP="/bin/grep"
if [ "$(id -u)" != "0" ]; then
  clear; echo " "; echo " This script must be run as root " 1>&2; echo " "
  exit 1
fi
# CHECK ROOT ACCESS #

clear
echo " "
echo " Your VPN connection will be stablish "
echo " "
echo " Press [ENTER] to Continue"
read -r

clear
echo " "
echo " Select VPN Connection to stablish "
echo " "
echo "   1 - SeedBoxes "
echo "   2 - Second "
echo "   3 - Third "
echo "   0 - None "
echo " "
read VPNCHOISE

case $VPNCHOISE in
  1)
    echo " You Selected SeedBoxes "
    #sudo bash /home/techserv/scripts/seedboxes.sh
    /usr/sbin/openvpn --daemon --config /etc/openvpn/seedboxes.ovpn
    ;;
  2)
    echo " You Selected Secon - THIS IS EMPTY"
    ;;
  3)
    echo " You Selected Third - THIS IS EMPTY"
    ;;
  0)
    echo " You Selected None - THIS WILL CAUSE TO EXIT"
    ;;
  *)
    echo " Wrong Choise - THIS NEED TO REPEAT THE QUESTION"
    ;;
esac

sleep 5

clear
echo " Your VPN connection will be check to assure connection "
echo " "
echo -p " Press [ENTER] to continue"
read -r

if (/sbin/ifconfig tun0);
  then
    clear; echo " "; echo " Your VPN Connection is stablish - GOOD TO GO !"; echo " "
  else
    clear; echo " "; echo " No VPN Connection >> WARNING! <<"; echo " "
fi
echo " Type [ ENTER ] to continue "
read -r
echo " "