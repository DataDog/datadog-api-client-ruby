#!/usr/bin/env bash

./extract-code-blocks.sh

ls examples/v*/*/*.rbbeta | xargs -P $(($(nproc)*2)) -n 1 bundle exec ruby -cw && bundle exec rubocop examples/v*/*/*.rbbeta
if [ $? -ne 0 ]; then
    echo -e "Failed to build examples"
    exit 1
fi
