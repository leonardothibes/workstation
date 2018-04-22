#!/bin/bash

SO=$(uname)
WHO=$(id -u)
HERE=$(dirname $0)

clear

echo " Workstation Config"
echo ""

# Only root
if [ ${WHO} -ne 0 ]; then
	echo "É necessário ter permissão de root para rodar este script"
	exit 1
fi
# Only root

# SO
if [ ${SO} == "Darwin" ]; then
    SO="mac"
else
    SO="linux"
fi
# SO

# The magic happens
for DIR in $(ls ${HERE}/${SO})
do
    SCRIPT="${HERE}/${SO}/${DIR}/configure.sh"
    chmod 755 ${SCRIPT}
    sh ${SCRIPT}
done
# The magic happens

echo ""
echo " Done!"
echo ""
