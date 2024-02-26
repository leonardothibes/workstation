#!/bin/bash

echo " - Fixing APT database..."

LOCK=/tmp/workstation.lock.unnecessary.apt
[ -f ${LOCK} ] && return

apt-get -f install -y > /dev/null 2>&1
> ${LOCK}
