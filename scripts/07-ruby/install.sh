#!/bin/bash

echo " - Ruby..."

LOCK=/tmp/workstation.lock.ruby
[ -f ${LOCK} ] && return

apt-get install -y ruby ruby-dev > /dev/null 2>&1
gem install bundler jekyll       > /dev/null 2>&1

> ${LOCK}
