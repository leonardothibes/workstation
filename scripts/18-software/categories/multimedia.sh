#!/bin/bash

echo "   - Multimedia..."

# From repository
apt-get install -y audacity       \
                   handbrake      \
                   kazam          \
                   kdenlive       \
                   spotify-client \
> /dev/null 2>&1
# From repository
