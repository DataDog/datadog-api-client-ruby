#!/usr/bin/env bash

./extract-code-blocks.sh examples

bundle install
ls examples/*/*/*.rbbeta | xargs -P $(($(nproc)*2)) -n 1 bundle exec ruby -cw && bundle exec rubocop examples/*/*/*.rbbeta
if [ $? -ne 0 ]; then
    echo -e "Failed to build examples"
    exit 1
fi
