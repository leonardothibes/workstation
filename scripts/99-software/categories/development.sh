#!/bin/bash

echo "   - Development..."

LOCK=/tmp/workstation.lock.development
[ -f ${LOCK} ] && return

# From repository
apt-get install -y sqlitebrowser   \
                   gitg            \
                   meld            \
                   sublime-text    \
> /dev/null 2>&1
# From repository

# From Flathub
flatpak install -y --noninteractive flathub rest.insomnia.Insomnia > /dev/null 2>&1
flatpak install -y --noninteractive flathub com.getpostman.Postman > /dev/null 2>&1
flatpak install -y --noninteractive flathub io.beekeeperstudio.Studio > /dev/null 2>&1
# From Flathub

# Other sources
echo "     - 3rd party..."

DEVELOPMENT=$(dirname $0)/development
sh ${DEVELOPMENT}/azurestudio.sh
sh ${DEVELOPMENT}/mysql-workbench.sh

# for SOFTWARE in $(ls ${DEVELOPMENT})
# do
#     chmod 755 ${DEVELOPMENT}/${SOFTWARE}
#     sh ${DEVELOPMENT}/${SOFTWARE}
# done
# Other sources

> ${LOCK}
