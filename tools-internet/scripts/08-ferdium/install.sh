#!/bin/bash

echo " - Ferdium..."

LOCK=/tmp/workstation.lock.internet.ferdium
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub org.ferdium.Ferdium > /dev/null 2>&1

> ${LOCK}
