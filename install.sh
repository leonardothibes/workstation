#!/bin/bash

SO=$(uname)
WHO=$(id -u)
HERE=$(dirname $0)

clear

echo " My Linux Workstation Config"
echo ""

# Only root
if [ ${WHO} -ne 0 ]; then
	echo "Should be root!"
    echo ""
	exit 1
fi
# Only root

sh ./scripts/00-backup/install.sh
sh ./scripts/01-bash/install.sh
sh ./scripts/02-skel/install.sh
sh ./scripts/03-updates/install.sh
sh ./scripts/04-utils/install.sh
sh ./scripts/05-sysctl/install.sh
sh ./scripts/06-vim/install.sh
sh ./scripts/07-ruby/install.sh
sh ./scripts/08-python/install.sh
sh ./scripts/09-php/install.sh
sh ./scripts/10-java/install.sh
sh ./scripts/11-node/install.sh
sh ./scripts/12-dotnet/install.sh
sh ./scripts/13-ngrok/install.sh
sh ./scripts/14-docker/install.sh
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
