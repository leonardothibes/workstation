#!/bin/bash

echo " - KColorChooser..."

LOCK=/tmp/workstation.lock.graphics.kcolorchooser
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub org.kde.kcolorchooser > /dev/null 2>&1

> ${LOCK}
