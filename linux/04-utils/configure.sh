#!/bin/bash

echo " - Generic utilities..."

apt-get install -y apt-utils > /dev/null 2>&1
apt-get install -y apt-transport-https \
                   wget                \
                   curl                \
                   nmap                \
                   tcpdump             \
                   sysv-rc-conf        \
                   build-essential     \
                   git                 \
                   subversion          \
                   dialog              \
> /dev/null 2>&1
