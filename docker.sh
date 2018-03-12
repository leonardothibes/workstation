#!/bin/bash

IMG=mint
USER=leonardo
DIR=/home/${USER}/workstation

clear
docker run --rm -it -v $(pwd):${DIR} -w ${DIR} --user ${USER} ${IMG} bash
