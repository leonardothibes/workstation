#!/bin/bash

echo " - Removing unnecessary multimedia..."
TMP=/tmp

LOCK=/tmp/workstation.lock.unnecessary.multimedia
[ -f ${LOCK} ] && return

apt-get remove -y         \
        rhythmbox         \
        rhythmbox-data    \
        rhythmbox-plugins \
        hypnotix          \
> /dev/null 2>&1

> ${LOCK}
