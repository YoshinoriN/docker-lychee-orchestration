FROM php:7.1.2-fpm

MAINTAINER YoshinoriN

COPY ./conf/www.conf /usr/local/etc/php-fpm.d/zzz-www.conf
COPY ./conf/php.ini /usr/local/etc/php

WORKDIR /var/www/html
RUN mkdir /var/www/html/uploads /var/www/html/data \
 && chmod -R 770 /var/www/html \
 && chmod -R 777 /var/www/html/uploads /var/www/html/data \
 && apt-get update -y \
 && apt-get install -y libjpeg-dev libpng-dev \
 && docker-php-ext-configure gd --with-jpeg-dir=/usr/local/include/php/ext \
 && docker-php-ext-install session exif gd mbstring mysqli json zip \
 && docker-php-ext-enable session exif gd mbstring mysqli json zip \
 && mkdir /var/run/php-fpm
