FROM php:7.4
# Install PECL extensions
RUN docker-php-ext-install mysqli && \
    docker-php-ext-install pdo_mysql
RUN apt-get update -y && \
    apt-get install git -y && \
    git clone https://github.com/xdebug/xdebug
RUN cd xdebug && \
    phpize && \
    chmod +x configure && \
    ./configure --enable-xdebug && \
    make && \
    make install
RUN docker-php-ext-enable xdebug
RUN mkdir workspaces && \
    cd workspaces && \
    mkdir app
WORKDIR workspaces/app

#Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer