FROM alpine:latest

LABEL maintainer="jesse@elden.cloud"

RUN apk update && apk add --no-cache \
    bash \
    wget \
    vim \
    openjdk17-jre-headless

WORKDIR /papermc

COPY . /

CMD ["bash", "start.sh"]
