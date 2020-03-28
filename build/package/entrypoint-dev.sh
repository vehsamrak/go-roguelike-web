#!/bin/sh

echo Downloading dependencies
go get -t ./...

echo Building application
cd cmd && GOOS=linux GOARCH=amd64 go build -race -o ~/application || exit

echo Copying config
cp /go/src/github.com/vehsamrak/go-roguelike-web/configs/config-dev.yml ~/config.yml

echo Running application
cd ~ && ./application
