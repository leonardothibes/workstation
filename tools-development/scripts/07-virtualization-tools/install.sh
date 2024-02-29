#!/bin/bash

echo " - Virtualization Tools..."

LOCK=/tmp/workstation.lock.virtualization_tools
[ -f ${LOCK} ] && return

# VIRTUALBOX
VBOX_VERSION=7.0
curl -sO https://www.virtualbox.org/download/oracle_vbox_2016.asc

GPG=/usr/share/keyrings/oracle-virtualbox-2016.gpg
rm -f ${GPG}
gpg -o ${GPG} --dearmor oracle_vbox_2016.asc

REPO="deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian jammy contrib"
echo ${REPO} > /etc/apt/sources.list.d/virtualbox.list

apt-get update                                > /dev/null 2>&1
apt-get install -y virtualbox-${VBOX_VERSION} > /dev/null 2>&1

rm -f oracle_vbox_2016.asc
# VIRTUALBOX

> ${LOCK}
