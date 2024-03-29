#!/bin/bash

echo " - Removing unnecessary internet..."

LOCK=/tmp/workstation.lock.unnecessary.internet
[ -f ${LOCK} ] && return

apt-get remove -y   \
        thunderbird \
        hexchat     \
> /dev/null 2>&1

> ${LOCK}
