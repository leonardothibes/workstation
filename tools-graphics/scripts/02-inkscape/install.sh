#!/bin/bash

echo " - Inkscape..."

LOCK=/tmp/workstation.lock.graphics.inkscape
[ -f ${LOCK} ] && return

apt-get install -y inkscape > /dev/null 2>&1

> ${LOCK}
