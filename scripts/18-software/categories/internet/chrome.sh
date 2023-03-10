#!/bin/bash

echo "       - Google Chrome..."

APT="/etc/apt/sources.list.d/google.list"
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > ${APT}
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - > /dev/null 2>&1

apt-get update                          > /dev/null 2>&1
apt-get install -y google-chrome-stable > /dev/null 2>&1
