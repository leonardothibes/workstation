#!/bin/bash

echo " - Ruby..."

LOCK=/tmp/workstation.lock.ruby
[ -f ${LOCK} ] && return

apt-get install -y ruby ruby-dev > /dev/null
gem install bundler jekyll       > /dev/null

> ${LOCK}
