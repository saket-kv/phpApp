FROM php:7.0-apache
MAINTAINER svsaket123@gmail.com
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY . ./var/www/html
RUN chown -R www-data:www-data /var/www


