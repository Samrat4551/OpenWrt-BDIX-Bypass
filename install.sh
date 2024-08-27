#!/bin/bash

# Update package
opkg update

#install packages
opkg install iptables iptables-mod-nat-extra redsocks

#Then run this line
service redsocks stop && mv /etc/redsocks.conf && cd /etc && wget https://github.com/Samrat4551/OpenWrt-BDIX-Bypass/raw/main/bdix.conf && mv /etc/init.d/redsocks && cd /etc/init.d && wget https://github.com/Samrat4551/OpenWrt-BDIX-Bypass/raw/main/bdix && chmod +x /etc/init.d/bdix

cd /
clear


echo -e "Thanks for installing.