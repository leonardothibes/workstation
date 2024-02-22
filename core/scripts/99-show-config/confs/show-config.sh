#!/bin/bash

java -version
echo ""

php --version | head -1 | cut -d- -f1
echo ""

ruby --version | cut -d'(' -f1
echo ""

python3 --version
echo ""

echo "node `node --version`"
echo ""

echo "npm `npm --version`"
echo ""

echo "yarn `yarn --version`"
echo ""

echo "dotnet `dotnet --version`"
echo ""
