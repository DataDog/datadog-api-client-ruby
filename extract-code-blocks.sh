#!/usr/bin/env bash

OUTPUT=${1:-examples}

cd ${0%/*}

ls docs/v1/*API.md | xargs -n1 ./extract-code-blocks.awk -v output="${OUTPUT}/v1"
ls docs/v2/*API.md | xargs -n1 ./extract-code-blocks.awk -v output="${OUTPUT}/v2"
