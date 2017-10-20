#!/bin/bash
tag=beekman9527/tensorflowlib

docker build -t $tag -f Dockerfilelib .
docker push $tag

