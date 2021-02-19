FROM php:5.6-fpm-alpine

ADD config /

WORKDIR /app

ARG USER=root
ARG PASSWORD=development
ARG COMPOSER_VERSION=1.6.3

RUN apk add -U --no-cache \
        wget \
        curl 

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} \
    && composer global require "hirak/prestissimo:0.3.7"

RUN rm -rf /var/cache/apk/* 

EXPOSE 22 9000 

WORKDIR /app
VOLUME /app
