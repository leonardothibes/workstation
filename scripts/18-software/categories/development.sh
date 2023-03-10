#!/bin/bash

echo "   - Development..."

# From repository
apt-get install -y sqlitebrowser   \
                   gitg            \
                   meld            \
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
