#!/bin/bash

echo "       - Microsoft Teams..."

LOCK=/tmp/workstation.lock.internet.teams
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub com.github.IsmaelMartinez.teams_for_linux > /dev/null 2>&1

> ${LOCK}
