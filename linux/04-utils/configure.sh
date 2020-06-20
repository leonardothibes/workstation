#!/bin/bash

echo " - Generic utilities..."

apt-get install -y apt-utils > /dev/null 2>&1
apt-get install -y apt-transport-https \
                   wget                \
                   curl                \
                   nmap                \
                   nscd                \
                   tcpdump             \
                   build-essential     \
                   dialog              \
                   xclip               \
                   unzip               \
> /dev/null 2>&1
