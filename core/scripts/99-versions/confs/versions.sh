#!/bin/bash

echo ""
java -version
echo ""

php --version | head -1 | cut -d- -f1
echo ""

ruby --version | cut -d'(' -f1
echo ""

echo "python `python3 --version | cut -d' ' -f2`"
echo ""

echo "node `node --version`"
echo ""

echo "npm `npm --version`"
echo ""

echo "yarn `yarn --version`"
echo ""

echo "dotnet `dotnet --version`"
echo ""

echo "docker `docker --version | cut -d',' -f1 | cut -d' ' -f3`"
echo ""

echo "docker-compose `docker-compose --version | cut -d',' -f1 | cut -d' ' -f3`"
echo ""

echo `snap --version | head -1`
echo ""

echo `multipass --version | head -1`
echo ""

echo "git `git --version | cut -d' ' -f3`"
echo ""

echo "git-flow `git-flow version | cut -d' ' -f1`"
echo ""

echo "aws `aws --version | cut -d'/' -f2 | cut -d' ' -f1`"
echo ""

echo "make `make --version | head -1 | cut -d' ' -f3`"
echo ""

echo "gcc`gcc --version | head -1 | cut -d')' -f2`"
echo ""
