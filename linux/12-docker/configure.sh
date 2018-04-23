#!/bin/bash

echo " - Docker..."

apt-get install -y docker         \
                   docker-compose \
> /dev/null 2>&1
