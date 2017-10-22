FROM composer:latest
RUN addgroup -S composer && adduser -S -g composer composer
ENV COMPOSER_HOME /home/composer/.composer
USER composer
COPY --chown=composer:composer ./composer_config.json /home/composer/.composer/config.json
RUN composer global require hirak/prestissimo \
    && rm -rvf /home/composer/.composer/cache/*