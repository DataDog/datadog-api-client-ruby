#!/usr/bin/env sh
bundle install
bundle exec licensed cache
bundle exec licensed list
bundle exec licensed status
bundle exec licensed notice
mv .licenses/NOTICE ./
