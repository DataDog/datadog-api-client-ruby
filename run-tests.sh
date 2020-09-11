#!/usr/bin/env bash
set -e

function finish {
    rm -rf rerun.txt
}
trap finish EXIT

bundle exec cucumber -t 'not @skip' -f rerun -o rerun.txt -f pretty
RESULT=$?
if [ "$RERECORD_FAILED_TESTS" == "true" -a "$RESULT" -ne 0 ]; then
    RECORD=true bundle exec cucumber @rerun.txt
    RESULT=$?
fi
exit $RESULT
