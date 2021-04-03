#!/bin/bash

# From repository
echo "   - Development..."

apt-get install -y sqlitebrowser   \
                   gitg            \
                   meld            \
                   glade           \
                   libglade2-0     \
                   sublime-text    \
> /dev/null 2>&1
# From repository

# Other sources
echo "     - 3rd party..."

DEVELOPMENT=$(dirname $0)/development
for SOFTWARE in $(ls ${DEVELOPMENT})
do
    chmod 755 ${DEVELOPMENT}/${SOFTWARE}
    sh ${DEVELOPMENT}/${SOFTWARE}
done
# Other sources
