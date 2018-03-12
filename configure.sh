#!/bin/bash

SO=$(uname)
WHO=$(id -u)
HERE=$(dirname $0)

clear

# Only root
if [ ${WHO} -ne 0 ]; then
	echo "É necessário ter permissão de root para rodar este script"
	exit 1
fi
# Only root

# SO
if [ ${SO} == "Darwin" ]; then
    FOLDER="${HERE}/mac"
else
    FOLDER="${HERE}/linux"
fi
# SO

# The magic happens
for DIR in "$(ls ${FOLDER})"
do
    echo "${DIR}"
done
# The magic happens
