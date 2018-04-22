#!/bin/bash

echo " - Jekyll..."

apt-get install -y ruby ruby-dev > /dev/null
gem install jekyll bundler sass  > /dev/null
