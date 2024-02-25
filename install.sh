#!/bin/bash

clear
echo " My Linux Workstation Config"
HERE=$(dirname $0)

sh "${HERE}/core/install.sh"
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

echo " Done!"
echo ""
