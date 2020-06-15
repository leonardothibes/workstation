#!/bin/bash
IMG=linuxmintd/mint19.3-amd64
USER=root
DIR=/home/${USER}/workstation

clear
docker run --rm -it -v $(pwd):${DIR} -w ${DIR} --user ${USER} ${IMG} bash
