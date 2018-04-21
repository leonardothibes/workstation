#!/bin/bash

echo " - Bash environment configuration..."
CONFS=$(dirname $0)/confs

cp -f ${CONFS}/profile     /etc
cp -f ${CONFS}/bash.bashrc /etc

cp -f ${CONFS}/aliases.sh /etc/profile.d
cp -f ${CONFS}/ps1.sh     /etc/profile.d
