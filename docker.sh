#!/bin/bash

IMG=linuxmintd/mint18-amd64
DIR=/workstation

clear
docker run --rm -it -v $(pwd):${DIR} -w ${DIR} ${IMG} bash
