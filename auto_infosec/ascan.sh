#!/bin/sh

arachni $1 \
    --checks=*,-email* \
    --scope-include-subdomains \
    --timeout 1:00:00 \
    --http-request-concurrency 10
    # run chmod u+x
    # sudo ln -s /Path/to/ascan.sh /usr/local/bin/ascan