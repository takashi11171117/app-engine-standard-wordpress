FROM php:5.6-apache

RUN apt-get update \
  && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev libmcrypt-dev git zip unzip\
  && docker-php-ext-install pdo_mysql mysqli mbstring gd iconv mcrypt

COPY php.ini /usr/local/etc/php/
COPY default.conf /etc/apache2/sites-enabled/000-default.conf