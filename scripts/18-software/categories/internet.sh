#!/bin/bash

echo "   - Internet..."

LOCK=/tmp/workstation.lock.internet
# [ -f ${LOCK} ] && return

# From repository
apt-get install -y skypeforlinux      \
                   filezilla          \
                   slack              \
                   remmina            \
                   remmina-plugin-vnc \
                   remmina-plugin-rdp \
> /dev/null 2>&1
# From repository

# Other sources
echo "     - 3rd party..."

INTERNET=$(dirname $0)/internet
for SOFTWARE in $(ls ${INTERNET})
do
    chmod 755 ${INTERNET}/${SOFTWARE}
    sh ${INTERNET}/${SOFTWARE}
done
# Other sources

> ${LOCK}
