#!/bin/bash

echo "   - Multimedia..."

LOCK=/tmp/workstation.lock.multimedia
[ -f ${LOCK} ] && return

# From repository
apt-get install -y audacity       \
                   handbrake      \
                   kazam          \
                   kdenlive       \
                   spotify-client \
> /dev/null 2>&1
# From repository

> ${LOCK}
