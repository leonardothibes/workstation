#!/bin/bash

echo " - Docker..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.docker
[ -f ${LOCK} ] && return

# Docker
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable" > /etc/apt/sources.list.d/docker.list
apt-get update > /dev/null 2>&1
apt-get install -y --allow-unauthenticated docker-ce > /dev/null 2>&1
# Docker

# Docker lock file
for USER in $(ls /home)
do
    usermod -aG docker ${USER}
done
# Docker lock file

# Starting docker deamon
systemctl enable docker > /dev/null 2>&1
service docker start    > /dev/null 2>&1
# Starting docker deamon

# Docker Compose
VERSION=1.21.0 # Atualizar versão para 1.22.0
sudo curl -s -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod 755 /usr/local/bin/docker-compose
# Docker Compose

> ${LOCK}
