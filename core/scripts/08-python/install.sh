#!/bin/bash

echo " - Python..."

LOCK=/tmp/workstation.lock.python
[ -f ${LOCK} ] && return

apt-get install -y python3 > /dev/null

> ${LOCK}
