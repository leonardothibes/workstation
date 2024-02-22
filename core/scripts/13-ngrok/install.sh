#!/bin/bash

echo " - Ngrok..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.ngrok
[ -f ${LOCK} ] && return

curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | tee /etc/apt/trusted.gpg.d/ngrok.asc > /dev/null
echo "deb https://ngrok-agent.s3.amazonaws.com buster main" > /etc/apt/sources.list.d/ngrok.list

apt-get update        > /dev/null 2>&1
apt-get install ngrok > /dev/null 2>&1

> ${LOCK}
