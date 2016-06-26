FROM php:5.6-apache

RUN apt-get update && apt-get install -y git\
    libssl-dev \
    apt-utils \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev \
    && docker-php-ext-install pdo_mysql gd \
    && pecl install mongo && docker-php-ext-enable mongo

RUN echo "date.timezone=UTC" >> /usr/local/etc/php/php.ini

#COPY credentials "/root/.aws/credentials"
