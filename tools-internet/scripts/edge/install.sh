#!/bin/bash

echo " - Microsoft Edge..."

LOCK=/tmp/workstation.lock.internet.edge
[ -f ${LOCK} ] && return

VERSION=122.0.2365.63-1
URL=https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_${VERSION}_amd64.deb?brand=M102
DEB=/tmp/edge.deb

[ -f $DEB ] || wget -q $URL -O $DEB
[ -f $DEB ] && dpkg -i $DEB > /dev/null 2>&1

> ${LOCK}
