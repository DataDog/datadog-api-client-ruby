#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    exit 2
fi

./extract-code-blocks.sh examples $1

bundle install
ls examples/$1/*/*.rbbeta | xargs -P $(($(nproc)*2)) -n 1 bundle exec ruby -cw && bundle exec rubocop examples/$1/*/*.rbbeta
if [ $? -ne 0 ]; then
    echo -e "Failed to build examples"
    exit 1
fi
