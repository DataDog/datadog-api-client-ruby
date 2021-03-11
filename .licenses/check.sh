#!/usr/bin/env sh
set -e
bundle install
licensed cache
licensed list
licensed status
licensed notice
mv .licenses/NOTICE ./
