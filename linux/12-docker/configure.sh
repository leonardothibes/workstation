#!/bin/bash

echo " - Docker..."
CONFS=$(dirname $0)/confs

# Docker
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable" > /etc/apt/sources.list.d/docker.list
apt-get update > /dev/null 2>&1

apt-get install -y docker-ce > /dev/null 2>&1
cp -f ${CONFS}/docker.sh /etc/profile.d
# Docker

# Docker Compose
VERSION=1.21.0
sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod 755 /usr/local/bin/docker-compose
# Docker Compose
