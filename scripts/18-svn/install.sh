#!/bin/bash

echo " - Subversion..."
CONFS=$(dirname $0)/confs

URL="https://raw.githubusercontent.com/leonardothibes/svn-plus/master/svn-plus.sh"
BIN="/usr/local/bin/svnp"

LOCK=/tmp/workstation.lock.svn
[ -f ${LOCK} ] && return

apt-get install -y subversion > /dev/null 2>&1
curl -o ${BIN} ${URL}         > /dev/null 2>&1
chmod 755 ${BIN}

> ${LOCK}
