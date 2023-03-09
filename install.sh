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
    echo ""
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

sh ${HERE}/${SO}/00-backup/install.sh
sh ${HERE}/${SO}/01-bash/install.sh
sh ${HERE}/${SO}/02-skel/install.sh
sh ${HERE}/${SO}/03-updates/install.sh
sh ${HERE}/${SO}/04-utils/install.sh
sh ${HERE}/${SO}/05-sysctl/install.sh
# sh ${HERE}/${SO}/06-vim/install.sh
exit 0

# The magic happens here
for DIR in $(ls ${HERE}/${SO})
do
    SCRIPT="${HERE}/${SO}/${DIR}/install.sh"
    chmod 755 ${SCRIPT}
    sh ${SCRIPT}
done
# The magic happens here

echo ""
echo " Done!"
echo ""
