#!/bin/bash

echo " - GIT..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.git
[ -f ${LOCK} ] && return

cp -f ${CONFS}/git-core-ppa-xenial.list /etc/apt/sources.list.d
apt-get update > /dev/null 2>&1
apt-get install -y --allow-unauthenticated git > /dev/null 2>&1

> ${LOCK}
