FROM alpine:latest
MAINTAINER Nate Morse <nathan@shadyoaksoftware.com>

RUN apk add --no-cache util-linux

CMD uuidgen
