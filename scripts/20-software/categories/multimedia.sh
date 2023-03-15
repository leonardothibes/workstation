#!/bin/bash

echo "   - Multimedia..."

LOCK=/tmp/workstation.lock.multimedia
[ -f ${LOCK} ] && return

apt-get install -y audacity       \
                   kazam          \
                   handbrake      \
                   kdenlive       \
                   spotify-client \
> /dev/null 2>&1

> ${LOCK}
