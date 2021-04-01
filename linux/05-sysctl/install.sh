#!/bin/bash

echo " - Sysctl..."
CONFS=$(dirname $0)/confs
cp -f ${CONFS}/*.conf /etc/sysctl.d
