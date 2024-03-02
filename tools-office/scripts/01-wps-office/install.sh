#!/bin/bash

echo " - WPS Office..."

LOCK=/tmp/workstation.lock.office.wps
[ -f ${LOCK} ] && return

URL="https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/11719/wps-office_11.1.0.11719.XA_amd64.deb"
DEB=/tmp/wps_office.deb

[ -f $DEB ] || wget -q $URL -O $DEB
[ -f $DEB ] && dpkg -i $DEB > /dev/null 2>&1

rm -f $DEB
> ${LOCK}
