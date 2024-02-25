#!/bin/bash

echo "   Cinnamon and desktop settings"
echo ""

LOCK=/tmp/workstation.lock.cinnamon
[ -f ${LOCK} ] && return

dconf load / < $(dirname $0)/cinnamon_settings.dump
> ${LOCK}
