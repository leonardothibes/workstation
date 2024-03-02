#!/bin/bash

echo " - TickTick..."

LOCK=/tmp/workstation.lock.ticktick
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub com.ticktick.TickTick > /dev/null 2>&1

> ${LOCK}
