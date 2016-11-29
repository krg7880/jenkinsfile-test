#!/usr/bin/env bash

# turn off console logging
set +x

docker build --build-arg MY_SECRET_TEXT=$1 -t jenkins-test .