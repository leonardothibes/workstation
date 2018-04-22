#!/bin/bash

echo " - Dotnet Core..."
VERSION=2.1.105

# Repository
curl -s https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list
# Repository

# Install
apt-get update > /dev/null 2>&1
apt-get install -y apt-transport-https dotnet-sdk-${VERSION} > /dev/null 2>&1
# Install