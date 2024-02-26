#!/bin/bash

echo " - SQL Tools..."

LOCK=/tmp/workstation.lock.sqltools
[ -f ${LOCK} ] && return

apt-get install -y sqlitebrowser > /dev/null 2>&1
flatpak install -y --noninteractive flathub io.beekeeperstudio.Studio > /dev/null 2>&1

# Postbird
URL="https://github.com/Paxa/postbird/releases/download/0.8.4/Postbird_0.8.4_amd64.deb"
FILE=/tmp/postbird.deb

wget -q $URL -O $FILE
dpkg -i $FILE
rm -f $FILE
# Postbird

> ${LOCK}
