#!/bin/bash

echo " - Config files backup..."
BKPDIR=/root/bkp-confs

[ -d ${BKPDIR}/etc ]              || mkdir -p ${BKPDIR}/etc
[ -f ${BKPDIR}/etc/hosts ]        || cp /etc/hosts ${BKPDIR}/etc
[ -f ${BKPDIR}/etc/fstab ]        || cp /etc/fstab ${BKPDIR}/etc
[ -f ${BKPDIR}/etc/adduser.conf ] || cp /etc/adduser.conf ${BKPDIR}/etc
[ -f ${BKPDIR}/etc/profile ]      || cp /etc/profile ${BKPDIR}/etc
[ -f ${BKPDIR}/etc/bash.bashrc ]  || cp /etc/bash.bashrc ${BKPDIR}/etc

[ -d ${BKPDIR}/etc/apt ]       || cp -Rf /etc/apt ${BKPDIR}/etc
[ -d ${BKPDIR}/etc/skel ]      || cp -Rf /etc/skel ${BKPDIR}/etc
[ -d ${BKPDIR}/etc/profile.d ] || cp -Rf /etc/profile.d ${BKPDIR}/etc
