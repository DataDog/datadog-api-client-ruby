#!/usr/bin/env bash
function finish {
    rm -rf rerun.txt failed.txt
}
trap finish EXIT

bundle install
bundle exec cucumber -t 'not @skip' -f rerun -o rerun.txt -f pretty
CUCUMBER_RESULT=$?
if [ "$RERECORD_FAILED_TESTS" == "true" ] && [ "$CUCUMBER_RESULT" -ne "0" ]; then
    RECORD=true bundle exec cucumber @rerun.txt
    CUCUMBER_RESULT=$?
fi

exit $CUCUMBER_RESULT
