#!/bin/bash

echo " - Sublime Text..."
TMP=/tmp

LOCK=/tmp/workstation.lock.sublime
[ -f ${LOCK} ] && return

apt-get install -y sublime-text > /dev/null 2>&1
> ${LOCK}
