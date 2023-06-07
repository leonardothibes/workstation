#!/bin/bash

echo " - Multipass..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.multipass
[ -f ${LOCK} ] && return

snap install multipass > /dev/null 2>&1

> ${LOCK}
