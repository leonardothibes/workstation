#!/bin/bash

echo " - Generic utilities..."

apt-get install -y apt-utils > /dev/null 2>&1
apt-get install -y apt-transport-https   \
                   wget                  \
                   curl                  \
                   nmap                  \
                   nscd                  \
                   tcpdump               \
                   dialog                \
                   xclip                 \
                   unzip                 \
                   build-essential       \
                   mysql-client-core-5.7 \
> /dev/null 2>&1
