#!/bin/bash

echo " - SQL Tools..."
FILES=$(dirname $0)/files

LOCK=/tmp/workstation.lock.sql_tools
[ -f ${LOCK} ] && return

# Postbird
sudo snap install postbird > /dev/null 2>&1

cp -f $FILES/postbird/postbird.png     /usr/share/pixmaps
cp -f $FILES/postbird/postbird.desktop /usr/share/applications
# Postbird

# MySQL Workbench
snap install mysql-workbench-community > /dev/null 2>&1

# SQLite Browser
apt-get install -y sqlitebrowser > /dev/null 2>&1

# Beekeeper Studio
flatpak install -y --noninteractive flathub io.beekeeperstudio.Studio > /dev/null 2>&1

> ${LOCK}
