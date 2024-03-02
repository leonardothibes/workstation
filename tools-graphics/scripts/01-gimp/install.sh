#!/bin/bash

echo " - Gimp..."

LOCK=/tmp/workstation.lock.graphics.gimp
[ -f ${LOCK} ] && return

apt-get install -y gimp > /dev/null 2>&1

> ${LOCK}
