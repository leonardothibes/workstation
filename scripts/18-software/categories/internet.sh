#!/bin/bash

echo "   - Internet..."

# From repository
apt-get install -y skypeforlinux     \
                   whatsapp-desktop  \
                   slack             \
> /dev/null 2>&1
# From repository
