#!/bin/sh

#1. install Tensorflow C library
TF_TYPE="cpu" # Change to "gpu" for GPU support
TARGET_DIRECTORY='/usr/local'
curl -L \
   "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-${TF_TYPE}-linux-x86_64-1.3.0.tar.gz" |
tar -C $TARGET_DIRECTORY -xz

ldconfig


