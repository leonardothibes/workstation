#!/bin/bash
IMG=linuxmintd/mint21.3-amd64
USER=root
DIR=/${USER}/workstation

clear
docker run --rm -it -v $(pwd):${DIR} -w ${DIR} --user ${USER} ${IMG} bash
