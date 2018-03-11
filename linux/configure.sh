#!/bin/bash

WHO=$(id -u)
HERE=$(dirname $0)

# Only root
clear
if [ ${WHO} -ne 0 ]; then
	echo "É necessário ter permissão de root para rodar este script"
	exit 1
fi
# Only root

for DIR in $(${HERE}/${DIR})
do
    echo "$(${HERE}/${DIR})/configure.sh"
done
