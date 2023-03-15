#!/bin/bash

echo "       - Flameshot..."

LOCK=/tmp/workstation.lock.flameshot
[ -f ${LOCK} ] && return

# From Flathub
flatpak install -y --noninteractive flathub org.flameshot.Flameshot > /dev/null 2>&1

> ${LOCK}
