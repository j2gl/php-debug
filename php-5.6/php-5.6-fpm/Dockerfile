FROM php:5.6-fpm-alpine

ADD config /

WORKDIR /app

ARG USER=root
ARG PASSWORD=development
ARG COMPOSER_VERSION=1.6.3

RUN docker-php-ext-install -j$(nproc) mysqli opcache

RUN apk add -U --no-cache \
        openssh \
        supervisor \
        git \
        zip \
        wget \
        curl 

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} \
    && composer global require "hirak/prestissimo:0.3.7"

#        php5-xdebug 

RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
    && echo "${USER}:${PASSWORD}" | chpasswd \
    && ssh-keygen -A \
    && rm -rf /var/cache/apk/* 

# ADD dev-config /

EXPOSE 22 9000 

WORKDIR /app
VOLUME /app
