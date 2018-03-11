#!/bin/bash

IMG=linuxmintd/mint18-amd64

clear
docker run --rm -it -v $(pwd):/workstation -w /workstation ${IMG} bash
