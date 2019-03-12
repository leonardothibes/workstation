#!/bin/bash

echo " - Bash environment configuration..."
CONFS=$(dirname $0)/confs

cp -f ${CONFS}/profile     /etc
cp -f ${CONFS}/bash.bashrc /etc
cp -f ${CONFS}/*.sh        /etc/profile.d
