#!/bin/bash

echo " - Ruby..."

LOCK=/tmp/workstation.lock.ruby
[ -f ${LOCK} ] && return

apt-get install -y ruby ruby-dev > /dev/null

> ${LOCK}
