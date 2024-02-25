#!/bin/bash

echo " - Show Config..."
CONFS=$(dirname $0)/confs

cp -f ${CONFS}/show-config.sh /usr/local/bin/show-config
chmod 755 /usr/local/bin/show-config
