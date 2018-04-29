#!/bin/bash

IMG=vcatechnology/linux-mint:latest
USER=user
DIR=/home/${USER}/workstation

clear
sudo docker run --rm -it -v $(pwd):${DIR} -w ${DIR} ${IMG} bash
