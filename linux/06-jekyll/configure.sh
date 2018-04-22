#!/bin/bash

echo " - Jekyll..."

LOCK=/tmp/workstation.lock.update
[ -f ${LOCK} ] && return

apt-get install -y ruby ruby-dev > /dev/null
gem install jekyll bundler sass  > /dev/null

> ${LOCK}
