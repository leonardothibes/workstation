#!/bin/bash

echo "       - Peek..."

APT="/etc/apt/sources.list.d/peek-developers-stable-focal.list"
echo "deb http://ppa.launchpad.net/peek-developers/stable/ubuntu focal main"     >  ${APT}
echo "deb-src http://ppa.launchpad.net/peek-developers/stable/ubuntu focal main" >> ${APT}

apt-get update          > /dev/null 2>&1
apt-get install -y peek > /dev/null 2>&1
