#!/bin/bash

echo " - Boxes..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.boxes
[ -f ${LOCK} ] && return

# From Flathub
flatpak install -y --noninteractive flathub org.gnome.Boxes > /dev/null 2>&1

> ${LOCK}
