FROM alpine:latest

MAINTAINER "NingYu <mynameisny@126.com>"

RUN apk update && \
    apk add --no-cache tzdata curl bash jq && \
    rm -rf /var/cache/apk/*

ADD ./docker-search.sh /docker-search.sh

ENTRYPOINT ["/docker-search.sh"] 
