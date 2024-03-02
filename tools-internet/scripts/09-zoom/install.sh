#!/bin/bash

echo " - Zoom..."

LOCK=/tmp/workstation.lock.internet.zoom
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub us.zoom.Zoom > /dev/null 2>&1

> ${LOCK}
