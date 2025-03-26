FROM php:8.3-apache
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN IPE_DEBUG=1 install-php-extensions mysqli exif igbinary imagick intl zip apcu memcached opcache redis timezonedb shmop ssh2 ftp sockets gd bcmath
