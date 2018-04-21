#!/bin/bash

echo " - Generic utilities..."

apt-get install -y apt-utils > /dev/null 2>&1
apt-get install -y wget         \
                   curl         \
                   nmap         \
                   tcpdump      \
                   sysv-rc-conf \
> /dev/null
