# stage 1 Generate celestia-appd Binary
FROM golang:1.18-alpine as builder
# hadolint ignore=DL3018
RUN apk update && apk --no-cache add gcc musl-dev
COPY . /celestia-app
WORKDIR /celestia-app

# stage 2
FROM alpine
# hadolint ignore=DL3018
RUN apk update && apk --no-cache add bash

# p2p, rpc and prometheus port
EXPOSE 26656 26657 1317 9090

ENV CELESTIA_HOME /opt

