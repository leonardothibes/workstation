#!/bin/bash
IMG=vcatechnology/linux-mint-ci:latest
USER=build-server
DIR=/home/${USER}/workstation

clear
docker run --rm -it -v $(pwd):${DIR} -w ${DIR} --user ${USER} ${IMG} bash
