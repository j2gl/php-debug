FROM php:7.1-apache

RUN apt-get update &&\
    apt-get install --no-install-recommends --assume-yes --quiet ca-certificates curl git &&\
    rm -rf /var/lib/apt/lists/*

RUN pecl install xdebug-2.6.1 && docker-php-ext-enable xdebug
RUN echo '[Xdebug]' >> /usr/local/etc/php/php.ini && \
    echo 'zend_extension="/usr/local/lib/php/extensions/no-debug-non-zts-20160303/xdebug.so"' >> /usr/local/etc/php/php.ini && \
    echo 'xdebug.remote_host=host.docker.internal' >> /usr/local/etc/php/php.ini && \
    echo 'xdebug.remote_port=9000' >> /usr/local/etc/php/php.ini && \
    echo 'xdebug.remote_enable=1' >> /usr/local/etc/php/php.ini && \
    echo 'xdebug.remote_autostart=1' >> /usr/local/etc/php/php.ini && \
    echo 'xdebug.remote_connect_back=0' >> /usr/local/etc/php/php.ini

# If you need logs
# RUN echo 'xdebug.remote_log=/var/www/html/xdebug-container.log' >> /usr/local/etc/php/php.ini \


