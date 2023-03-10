#!/bin/bash

echo "       - Team Viewer..."

FILES=$(dirname $0)/files
APT=/etc/apt/sources.list.d/teamviewer.list
KEY=/usr/share/keyrings/teamviewer-keyring.gpg

LOCK=/tmp/workstation.lock.internet.teamviewer
[ -f ${LOCK} ] && return

# cp -f ${FILES}/teamviewer-keyring.gpg /usr/share/keyrings
# echo "deb [signed-by=${KEY}] https://linux.teamviewer.com/deb stable main" > ${APT}

# apt-get update                
# apt-get install -y teamviewer 

> ${LOCK}
