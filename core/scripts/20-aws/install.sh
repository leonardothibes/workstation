#!/bin/bash

echo " - Aws..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.aws
[ -f ${LOCK} ] && return

FILE=/tmp/awscliv.zip
DIR=/tmp/aws

# Download
[ -f $FILE ] || curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o $FILE
[ -d $DIR  ] || unzip -q $FILE -d /tmp
# Download

# Install
[ -f /usr/local/bin/aws ] || $DIR/install --update > /dev/null 2>&1
rm -Rf $DIR $FILE
# Install

> ${LOCK}
