#!/bin/bash

echo " - Ngrok..."
CONFS=$(dirname $0)/confs

cp -f ${CONFS}/ngrok /usr/local/bin/ngrok
chmod 755 /usr/local/bin/ngrok
