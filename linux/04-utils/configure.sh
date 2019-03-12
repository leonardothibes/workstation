#!/bin/bash

echo " - Generic utilities..."

apt-get install -y apt-utils > /dev/null 2>&1
apt-get install -y apt-transport-https \
                   wget                \
                   curl                \
                   nmap                \
                   nscd                \
                   tcpdump             \
                   sysv-rc-conf        \
                   build-essential     \
                   git                 \
                   subversion          \
                   dialog              \
                   xclip               \
> /dev/null 2>&1
