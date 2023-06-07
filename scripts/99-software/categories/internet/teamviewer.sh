#!/bin/bash

echo "       - Team Viewer..."

LOCK=/tmp/workstation.lock.internet.teamviewer
[ -f ${LOCK} ] && return

FILES=$(dirname $0)/files
dpkg -i ${FILES}/teamviewer_15.39.3_amd64.deb > /dev/null 2>&1

> ${LOCK}
