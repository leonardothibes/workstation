#!/bin/bash

echo " - Node.js..."
CONFS=$(dirname $0)/confs

for USER in $(ls /home)
do
    su - ${USER} -c "wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.9/install.sh | bash > /dev/null 2>&1"
done;

cp -f ${CONFS}/nvm.sh /etc/profile.d
