FROM composer:latest
RUN addgroup -S composer && adduser -S -g composer composer
ENV COMPOSER_HOME /home/composer
USER composer
RUN composer global require hirak/prestissimo