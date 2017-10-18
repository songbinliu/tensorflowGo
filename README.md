# tensorflowGo
This project is to build a docker image, which can be a Golang development envirment for [tensorflow](http://www.tensorflow.org).

The build process is based on the [instructions  ofInstalling TensorFlow for Go](https://www.tensorflow.org/install/install_go).

# how to use it
Based on this image, put your Golang project into ${GOPATH}/src, and build it.
```bash
COPY hello ${GOPATH}/src/hello
RUN cd ${GOPATH}/src/hello && go get . && go build
```
