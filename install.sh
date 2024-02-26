#!/bin/bash

clear
echo "----------------------------"
echo " My Linux Workstation Config"
echo "----------------------------"

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

sh "${HERE}/core/install.sh"
echo ""

echo "---------------------"
echo " Final configurations"
echo "---------------------"
echo ""

echo " GIT"
echo ""
echo "  git config --global user.name \"Leonardo Thibes\""
echo "  git config --global user.email \"leonardothibes@gmail.com\""
echo ""

echo " NGROK"
echo ""
echo "  ngrok config add-authtoken your-token-here"
echo ""
