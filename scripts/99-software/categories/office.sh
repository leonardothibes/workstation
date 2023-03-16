#!/bin/bash

echo "   - Office..."

LOCK=/tmp/workstation.lock.office
[ -f ${LOCK} ] && return

# From Flathub
flatpak install -y --noninteractive flathub com.wps.Office                   > /dev/null 2>&1
flatpak install -y --noninteractive flathub com.ticktick.TickTick            > /dev/null 2>&1
flatpak install -y --noninteractive flathub com.notesnook.Notesnook          > /dev/null 2>&1
flatpak install -y --noninteractive flathub net.codeindustry.MasterPDFEditor > /dev/null 2>&1
flatpak install -y --noninteractive flathub com.github.marktext.marktext     > /dev/null 2>&1
flatpak install -y --noninteractive flathub net.daase.journable              > /dev/null 2>&1
# From Flathub

> ${LOCK}
