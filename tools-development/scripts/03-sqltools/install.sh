#!/bin/bash

echo " - SQL Tools..."

LOCK=/tmp/workstation.lock.sqltools
[ -f ${LOCK} ] && return

apt-get install -y sqlitebrowser > /dev/null 2>&1
flatpak install -y --noninteractive flathub io.beekeeperstudio.Studio > /dev/null 2>&1

> ${LOCK}
