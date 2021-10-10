#!/bin/bash

#cd ..

docker volume create --name modules

docker run \
  --name react \
  -d \
  --mount type=bind,source="$(pwd)",target=/portal \
  -p 9000:8080 \
  -it node:lts-alpine3.14
 
#  --mount source=modules,target=/portal/node_modules \
