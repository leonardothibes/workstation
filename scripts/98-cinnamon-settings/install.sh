#!/bin/bash

echo " - Cinnamon Settings..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.cinnamon_settings
[ -f ${LOCK} ] && return

dconf load / < ${CONFS}/cinnamon_settings.dump

> ${LOCK}
