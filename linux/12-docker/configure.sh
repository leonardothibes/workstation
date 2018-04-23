#!/bin/bash

echo " - Docker..."
CONFS=$(dirname $0)/confs

echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable" > /etc/apt/sources.list.d/docker.list
apt-get update > /dev/null 2>&1

apt-get install -y docker-ce      \
#                    docker-compose \
> /dev/null 2>&1

cp -f ${CONFS}/docker.sh /etc/profile.d
