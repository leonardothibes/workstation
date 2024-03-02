#!/bin/bash

echo " - Remmina..."

LOCK=/tmp/workstation.lock.internet.remmina
[ -f ${LOCK} ] && return

apt-get install -y remmina             \
                   remmina-plugin-vnc  \
                   remmina-plugin-rdp  \
                   remmina-plugin-www  \
                   remmina-plugin-exec \
> /dev/null 2>&1

> ${LOCK}
