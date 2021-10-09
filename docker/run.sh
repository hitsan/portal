#!/bin/bash

cd ..
R_HOME=`pwd`

docker run \
  --name react \
  -d \
  -v  $R_HOME/tut:/work \
  -p 9000:8080 \
  -it node:lts-alpine3.14 \
