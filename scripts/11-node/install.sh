#!/bin/bash

echo " - Node.js..."
CONFS=$(dirname $0)/confs

VERSION=14.16.0
PACKAGES="
    npm-check-updates
    http-server
    yarn
    uuid
    node-cpf-cli
    @angular/cli
"

LOCK=/tmp/workstation.lock.node
[ -f ${LOCK} ] && return

for USER in $(ls /home)
do
    su - ${USER} -c "wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash"
    su - ${USER} -c "nvm install ${VERSION}"
    for PACKAGE in ${PACKAGES}
    do
        su - ${USER} -c "npm install --ignore-scripts -g ${PACKAGE}"
    done;
done;

su - root -c "wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash"
su - root -c "nvm install ${VERSION}"
for PACKAGE in ${PACKAGES}
do
    su - root -c "npm install --ignore-scripts -g ${PACKAGE}"
done;

cp -f ${CONFS}/nvm.sh /etc/profile.d
> ${LOCK}
