FROM golang

COPY install-tensorflow.sh /tmp/install-tensorflow.sh

RUN chmod +x /tmp/install-tensorflow.sh
RUN sh /tmp/install-tensorflow.sh

RUN mkdir ${GOPATH}/src/hello
COPY hello ${GOPATH}/src/hello/
WORKDIR ${GOPATH}/src/hello

# RUN cd ${GOPATH}/src/hello && go build && ./hello
RUN go get .
RUN go build && ./hello
