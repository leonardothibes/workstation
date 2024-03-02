#!/bin/bash

echo " - Microsoft Edge..."

LOCK=/tmp/workstation.lock.internet.edge
[ -f ${LOCK} ] && return

echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge/ stable main" > /etc/apt/sources.list.d/microsoft-edge.list
apt-get update                           > /dev/null 2>&1
apt-get install -y microsoft-edge-stable > /dev/null 2>&1

> ${LOCK}
