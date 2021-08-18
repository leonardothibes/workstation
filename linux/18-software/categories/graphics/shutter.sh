#!/bin/bash

echo "       - Shutter..."

APT="/etc/apt/sources.list.d/linuxuprising-shutter-focal.list"
echo "deb http://ppa.launchpad.net/linuxuprising/shutter/ubuntu focal main"     >  ${APT}
echo "deb-src http://ppa.launchpad.net/linuxuprising/shutter/ubuntu focal main" >> ${APT}

apt-get update          > /dev/null 2>&1
apt-get install shutter > /dev/null 2>&1
