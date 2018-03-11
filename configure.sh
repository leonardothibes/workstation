#!/bin/bash

SO=$(uname)
HERE=$(dirname $0)

if [ ${SO} == "Darwin" ]; then
    SCRIPT="${HERE}/mac/configure.sh"
else
    SCRIPT="${HERE}/mac/configure.sh"
fi

sh ${SCRIPT}
