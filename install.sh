#!/bin/bash

SO=$(uname)
WHO=$(id -u)
HERE=$(dirname $0)

clear

echo " My Linux Workstation Config :-)"
echo ""

# Only root
if [ ${WHO} -ne 0 ]; then
	echo "É necessário ter permissão de root para rodar este script"
    echo ""
	exit 1
fi
# Only root

sh ./scripts/00-backup/install.sh
sh ./scripts/01-bash/install.sh
sh ./scripts/03-updates/install.sh
sh ./scripts/04-utils/install.sh
exit 0

# The magic happens here
for DIR in $(ls ${HERE}/scripts)
do
    SCRIPT="${HERE}/scripts/${DIR}/install.sh"
    chmod 755 ${SCRIPT}
    sh ${SCRIPT}
done
# The magic happens here

echo ""
echo " Done!"
echo ""
