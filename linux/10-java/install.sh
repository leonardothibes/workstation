#!/bin/bash

echo " - Java..."
CONFS=$(dirname $0)/confs

VERSION=jre1.8.0_281
INSTALL=/usr/local/java
FILE=jre-8u281-linux-x64.tar.gz
BIN=/usr/local/bin/java

LOCK=/tmp/workstation.lock.java
[ -f ${LOCK} ] && return

[ -d ${INSTALL} ]            || mkdir ${INSTALL}
[ -d ${INSTALL}/${VERSION} ] || tar -xzf ${CONFS}/${FILE} -C ${INSTALL}
[ -L ${INSTALL}/current ]    || ln -sf ${INSTALL}/${VERSION} ${INSTALL}/current
[ -L ${BIN} ]                || ln -sf ${INSTALL}/current/bin/java ${BIN}

> ${LOCK}
