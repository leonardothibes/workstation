#!/bin/bash

echo " - Generic utilities..."

apt-get install -y apt-utils > /dev/null 2>&1
apt-get install -y apt-transport-https       \
                   lsb-release               \
                   wget                      \
                   curl                      \
                   nmap                      \
                   nscd                      \
                   tcpdump                   \
                   dialog                    \
                   unzip                     \
                   build-essential           \
                   mysql-client              \
> /dev/null 2>&1
