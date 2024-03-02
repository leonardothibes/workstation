#!/bin/bash

echo " - Flameshot..."

LOCK=/tmp/workstation.lock.graphics.flameshot
[ -f ${LOCK} ] && return

apt-get install -y flameshot > /dev/null 2>&1

> ${LOCK}
