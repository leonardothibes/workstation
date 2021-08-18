#!/bin/bash

echo "   - Multimedia..."

# Clean
apt-get remove -y rhythmbox

# From repository
apt-get install -y audacity       \
                   handbrake      \
                   kazam          \
                   kdenlive       \
                   spotify-client \
> /dev/null 2>&1
# From repository
