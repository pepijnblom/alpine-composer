FROM composer:latest
RUN mkdir /composer
RUN composer --working-dir=/composer global require hirak/prestissimo