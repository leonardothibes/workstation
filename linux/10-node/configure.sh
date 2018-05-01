#!/bin/bash

echo " - Node.js..."
CONFS=$(dirname $0)/confs

VERSION=8.11.1
PACKAGES="
    npm-check-updates
    http-server
    gulp
    uuid
"

LOCK=/tmp/workstation.lock.node
[ -f ${LOCK} ] && return

for USER in $(ls /home)
do
    su - ${USER} -c "wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.9/install.sh | bash > /dev/null 2>&1"
    su - ${USER} -c "nvm install ${VERSION} > /dev/null 2>&1"
    for PACKAGE in ${PACKAGES}
    do
        su - ${USER} -c "npm install -g ${PACKAGE} > /dev/null 2>&1"
    done;
done;

cp -f ${CONFS}/nvm.sh /etc/profile.d

> ${LOCK}
