#!/bin/bash

echo "   - Graphics..."

LOCK=/tmp/workstation.lock.graphics
[ -f ${LOCK} ] && return

# From repository
apt-get install -y gimp     \
                   inkscape \
                   gpick    \
> /dev/null 2>&1
# From repository

# Other sources
echo "     - 3rd party..."

GRAPHICS=$(dirname $0)/graphics
for SOFTWARE in $(ls ${GRAPHICS})
do
    chmod 755 ${GRAPHICS}/${SOFTWARE}
    sh ${GRAPHICS}/${SOFTWARE}
done
# Other sources

> ${LOCK}
