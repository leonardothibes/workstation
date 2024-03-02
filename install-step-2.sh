#!/bin/bash

clear
echo "-------------------------------------"
echo " My Linux Workstation Config - step 2"
echo "-------------------------------------"

WHO=$(id -u)
HERE=$(dirname $0)

# Only root
if [ ${WHO} -ne 0 ]; then
    echo ""
	echo " Should be root!"
    echo ""
	exit 1
fi
# Only root

sh "${HERE}/tools-internet/install.sh"
sh "${HERE}/tools-graphics/install.sh"
sh "${HERE}/tools-office/install.sh"
echo ""
