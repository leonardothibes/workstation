#!/bin/bash

echo "   - Graphics..."

# From repository
apt-get install -y gimp     \
                   inkscape \
                   gpick    \
> /dev/null 2>&1
# From repository
