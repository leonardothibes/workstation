#!/bin/bash

echo "       - Team Viewer..."

LOCK=/tmp/workstation.lock.internet.teamviewer
# [ -f ${LOCK} ] && return

curl -sL https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc | gpg --dearmor | sudo apt-key add - > /dev/null 2>&1
echo "deb [signed-by=/usr/share/keyrings/teamviewer-keyring.gpg] https://linux.teamviewer.com/deb stable main" > /etc/apt/sources.list.d/teamviewer.list

> ${LOCK}
