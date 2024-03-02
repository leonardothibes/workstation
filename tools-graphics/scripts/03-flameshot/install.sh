#!/bin/bash

echo " - Flameshot..."

LOCK=/tmp/workstation.lock.graphics.flameshot
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub org.flameshot.Flameshot > /dev/null 2>&1

> ${LOCK}
