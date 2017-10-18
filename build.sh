#!/bin/bash

tag=beekman9527/tensorflowgo

docker build -t $tag .
docker push $tag

