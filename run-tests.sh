#!/usr/bin/env bash
function finish {
    rm -rf rerun.txt failed.txt
}
trap finish EXIT

bundle config set --local without docs

bundle install
RSPEC_RESULT=0
if [ "${RECORD:-false}" == "false" ]; then
    bundle exec rspec
    RSPEC_RESULT=$?
fi

bundle exec cucumber -f rerun -o rerun.txt -f pretty
CUCUMBER_RESULT=$?
if [ "$RERECORD_FAILED_TESTS" == "true" ] && [ "$CUCUMBER_RESULT" -ne "0" ]; then
    RECORD=true bundle exec cucumber @rerun.txt
    CUCUMBER_RESULT=$?
fi

exit "$(($RSPEC_RESULT+$CUCUMBER_RESULT))"
