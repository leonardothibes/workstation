#!/bin/bash

echo " - Git..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.git
[ -f ${LOCK} ] && return

apt-get install -y git git-flow > /dev/null 2>&1

> ${LOCK}
