#!/bin/bash

echo " - Config files backup..."
BKPDIR=/root/bkp-confs

[ -d ${BKPDIR}/etc ]              || mkdir -p ${BKPDIR}
[ -f ${BKPDIR}/etc/hosts ]        || cp /etc/hosts ${BKPDIR}
[ -f ${BKPDIR}/etc/fstab ]        || cp /etc/fstab ${BKPDIR}
[ -f ${BKPDIR}/etc/adduser.conf ] || cp /etc/adduser.conf ${BKPDIR}
[ -f ${BKPDIR}/etc/profile ]      || cp /etc/profile ${BKPDIR}
[ -f ${BKPDIR}/etc/bash.bashrc ]  || cp /etc/bash.bashrc ${BKPDIR}

[ -d ${BKPDIR}/etc/apt ]       || cp -Rf /etc/apt ${BKPDIR}
[ -d ${BKPDIR}/etc/skel ]      || cp -Rf /etc/skel ${BKPDIR}
[ -d ${BKPDIR}/etc/profile.d ] || cp -Rf /etc/profile.d ${BKPDIR}
