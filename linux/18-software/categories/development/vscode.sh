#!/bin/bash

echo "       - Visual Studio Code..."
URL="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
TMP=/tmp

curl ${URL} -o ${TMP}/vscode.deb
