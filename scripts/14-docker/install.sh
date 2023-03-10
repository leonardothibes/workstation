#!/bin/bash

echo " - Docker..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.docker
[ -f ${LOCK} ] && return

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - > /dev/null 2>&1
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable" > /etc/apt/sources.list.d/docker.list

apt-get update > /dev/null 2>&1
apt-get install -y             \
    software-properties-common \
    apt-transport-https        \
    ca-certificates            \
    gnupg-agent                \
    docker-ce                  \
    docker-ce-cli              \
    containerd.io              \
> /dev/null 2>&1
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
VERSION=1.28.6
sudo curl -s -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod 755 /usr/local/bin/docker-compose
# Docker Compose

> ${LOCK}
