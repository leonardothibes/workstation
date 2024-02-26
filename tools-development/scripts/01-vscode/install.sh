#!/bin/bash

echo " - Visual Studio Code..."
TMP=/tmp

LOCK=/tmp/workstation.lock.vscode
[ -f ${LOCK} ] && return

# curl -s https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > ${TMP}/microsoft.gpg
# mv ${TMP}/microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
# echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list

# apt-get update          > /dev/null 2>&1
# apt-get install -y code > /dev/null 2>&1

> ${LOCK}
