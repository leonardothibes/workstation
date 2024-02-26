#!/bin/bash

echo " - Merge Tools..."
TMP=/tmp

LOCK=/tmp/workstation.lock.merge_tools
[ -f ${LOCK} ] && return

apt-get install -y gitg meld > /dev/null 2>&1
> ${LOCK}
