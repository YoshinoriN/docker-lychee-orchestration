FROM php:7.1.2-fpm

MAINTAINER YoshinoriN

COPY ./php-fpm.d/www.conf /usr/local/etc/php-fpm.d

WORKDIR /var/www
RUN apt-get update \
 && apt-get install git -y \
 && mkdir /var/run/php-fpm \
 && mkdir /var/www/lychee \
 && mkdir /var/www/lychee/uploads \
 && mkdir /var/www/lychee/data \
 && chmod -R 770 /var/www/lychee \
 && chmod -R 777 /var/www/lychee/uploads \
 && chmod -R 777 /var/www/lychee/data

EXPOSE 80
