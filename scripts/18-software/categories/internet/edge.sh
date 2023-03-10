#!/bin/bash

echo "       - Microsoft Edge..."

APT="/etc/apt/sources.list.d/microsoft-edge.list"
echo "deb [arch=amd64] http://packages.microsoft.com/repos/edge/ stable main" > ${APT}

curl -s https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
rm -f microsoft.gpg

apt-get update                           > /dev/null 2>&1
apt-get install -y microsoft-edge-stable > /dev/null 2>&1
