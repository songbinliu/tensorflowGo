FROM golang

COPY install-tensorflow.sh /tmp/install-tensorflow.sh

RUN chmod +x /tmp/install-tensorflow.sh
RUN sh /tmp/install-tensorflow.sh

COPY hello ${GOPATH}/src/hello/

# WORKDIR ${GOPATH}/src/hello
# RUN go get . && go build && ./hello

RUN cd ${GOPATH}/src/hello && go build && ./hello
