#!/bin/bash

echo "       - Usermode FTP Server..."

LOCK=/tmp/workstation.lock.internet.usermode-ftp-server
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub eu.ithz.umftpd > /dev/null 2>&1

> ${LOCK}
