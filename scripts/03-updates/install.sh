#!/bin/bash

echo " - Package sources..."

LOCK=/tmp/workstation.lock.update
[ -f ${LOCK} ] && return

apt-get update > /dev/null 2>&1
> ${LOCK}
