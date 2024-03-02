#!/bin/bash

echo " - Google Chrome..."

LOCK=/tmp/workstation.lock.internet.chrome
[ -f ${LOCK} ] && return

KEY=/tmp/google.pub

wget -q https://dl-ssl.google.com/linux/linux_signing_key.pub -O $KEY
gpg --no-default-keyring --keyring /etc/apt/keyrings/google-chrome.gpg --import $KEY > /dev/null 2>&1
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

apt-get update                          > /dev/null 2>&1
apt-get install -y google-chrome-stable > /dev/null 2>&1

rm -f $KEY
> ${LOCK}
