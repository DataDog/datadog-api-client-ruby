#!/usr/bin/env bash

bundle install
ls examples/*/*/*.rb | xargs -P $(($(nproc)*2)) -n 1 bundle exec ruby -cw && bundle exec rubocop examples/*/*/*.rb
if [ $? -ne 0 ]; then
    echo -e "Failed to build examples"
    exit 1
fi
