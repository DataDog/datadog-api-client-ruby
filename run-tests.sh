#!/usr/bin/env bash
function finish {
    rm -rf failed.txt
}
trap finish EXIT

bundle install
RSPEC_RESULT=0
if [ "${RECORD:-false}" == "false" ]; then
    bundle exec rspec
    RSPEC_RESULT=$?
fi

if [ "$RECORD" == "none" ]; then
    bundle exec cucumber --retry 1
    CUCUMBER_RESULT=$?
else
    bundle exec cucumber
    CUCUMBER_RESULT=$?
fi

exit "$(($RSPEC_RESULT+$CUCUMBER_RESULT))"
