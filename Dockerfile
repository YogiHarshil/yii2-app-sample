FROM php:8.1-apache

RUN apt-get update && \
    docker-php-ext-install pdo pdo_mysql

COPY yii2-app/ /var/www/html/

WORKDIR /var/www/html/

RUN chown -R www-data:www-data /var/www/html
