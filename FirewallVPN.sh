#
# SeedBoxes 	Server IP: 192.99.35.78 	udp 1194
#

sudo ufw status

sudo ufw allow out on tun0
sudo ufw allow out on wlan2 to 192.99.35.78 port 1194 proto udp
sudo ufw allow out on wlan2 to 192.99.35.78 port 443 proto tcp

sudo ufw default deny incoming
sudo ufw default deny outgoing

sudo ufw enable
