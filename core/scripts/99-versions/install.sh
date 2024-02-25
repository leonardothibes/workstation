#!/bin/bash

echo " - Versions..."
CONFS=$(dirname $0)/confs

cp -f ${CONFS}/versions.sh /usr/local/bin/versions
chmod 755 /usr/local/bin/versions
