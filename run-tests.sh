#!/usr/bin/env bash
set -e
bundle exec cucumber -t 'not @skip'
