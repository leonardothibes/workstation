#!/bin/bash

echo " - SQL Tools..."
FILES=$(dirname $0)/files

LOCK=/tmp/workstation.lock.sql_tools
[ -f ${LOCK} ] && return

# Postbird
URL="https://github.com/Paxa/postbird/releases/download/0.8.4/Postbird_0.8.4_amd64.deb"
FILE=/tmp/postbird.deb

wget -q $URL -O $FILE
dpkg -i $FILE > /dev/null 2>&1
rm -f $FILE

cp -f $FILES/postbird/postbird.png     /usr/share/pixmaps
cp -f $FILES/postbird/postbird.desktop /usr/share/applications
# Postbird

apt-get install -y sqlitebrowser                                      > /dev/null 2>&1
flatpak install -y --noninteractive flathub io.beekeeperstudio.Studio > /dev/null 2>&1

> ${LOCK}
