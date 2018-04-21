#!/bin/bash

echo " - Home skeleton configuration..."
CONFS=$(dirname $0)/confs

[ -d /etc/skel/tmp ]  || mkdir /etc/skel/tmp
[ -d /etc/skel/.bin ] || mkdir /etc/skel/.bin
[ -d /etc/skel/.ssh ] || mkdir /etc/skel/.ssh

cp -f ${CONFS}/.profile /etc/skel
cp -f ${CONFS}/.bash_logout /etc/skel
rm -f /etc/skel/.bashrc /root/.bashrc

for DIR in `ls /home`
do
    echo "USER: ${DIR}"
done;
