#!/bin/bash

echo ""
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

echo "make `make --version | head -1 | cut -d' ' -f3`"
echo ""

echo "gcc`gcc --version | head -1 | cut -d')' -f2`"
echo ""
