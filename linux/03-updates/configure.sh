#!/bin/bash

echo " - Package sources..."

LOCK=/tmp/workstation.lock.update
[ -f ${LOCK} ] && return

apt-get update > /dev/null
> /tmp/workstation.lock.update
