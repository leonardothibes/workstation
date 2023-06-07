#!/bin/bash

echo "   - Graphics..."

LOCK=/tmp/workstation.lock.graphics
[ -f ${LOCK} ] && return

# From repository
apt-get install -y gimp     \
                   inkscape \
                   gpick    \
> /dev/null 2>&1
# From repository

# From Flathub
flatpak install -y --noninteractive flathub org.flameshot.Flameshot > /dev/null 2>&1
# From Flathub

> ${LOCK}
