FROM ubuntu:16.04

RUN apt-get update --fix-missing \
  && apt-get install -y gcc git curl openssh-client

RUN cd /tmp \
  && curl https://dl.google.com/go/go1.13.linux-amd64.tar.gz -o go.tar.gz
RUN cd /tmp \
  && tar -xf go.tar.gz \
  && mv go /usr/local \
  && rm /tmp/go.tar.gz

ENV GOPATH=/go
ENV GOROOT=/usr/local/go
ENV PATH=$GOPATH/bin:$GOROOT/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

WORKDIR /go/src/github.com/vehsamrak/go-roguelike-web
