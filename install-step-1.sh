#!/bin/bash

clear
echo "-------------------------------------"
echo " My Linux Workstation Config - step 1"
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

sh "${HERE}/core/install.sh"
sh "${HERE}/tools-development/install.sh"
sh "${HERE}/tools-unnecessary/remove.sh"

echo ""
echo "----------------"
echo " Tips and Tricks"
echo "----------------"
echo ""

echo " GIT"
echo ""
echo "  git config --global user.name \"Your Name\""
echo "  git config --global user.email \"your-email@gmail.com\""
echo ""

echo " SSH"
echo ""
echo "  mkdir ~/.ssh"
echo "  cd ~/.ssh"
echo "  ssh-keygen -t rsa -b 2048"
echo ""

echo " NGROK"
echo ""
echo "  ngrok config add-authtoken your-token-here"
echo ""
