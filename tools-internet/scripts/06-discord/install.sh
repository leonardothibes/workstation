#!/bin/bash

echo " - Discord..."

LOCK=/tmp/workstation.lock.internet.discord
[ -f ${LOCK} ] && return

URL="https://dl.discordapp.net/apps/linux/0.0.43/discord-0.0.43.deb"
DEB=/tmp/discord

[ -f $DEB ] || wget -q $URL -O $DEB
[ -f $DEB ] && dpkg -i $DEB > /dev/null 2>&1

rm -f $DEB
> ${LOCK}
