#!/bin/bash

echo " - Snap..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.snap
[ -f ${LOCK} ] && return

rm -f /etc/apt/preferences.d/nosnap.pref
apt-get update           > /dev/null 2>&1
apt-get install -y snapd > /dev/null 2>&1

> ${LOCK}
