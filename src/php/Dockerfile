FROM php:7.3.11-fpm
MAINTAINER guxin "702450358@qq.com"

#设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 更新
RUN apt-get update && apt-get install -y \
	git \ 
	libcurl4-gnutls-dev \  
	libfreetype6-dev \ 
	libjpeg62-turbo-dev \ 
	libpng-dev \ 
	libzip-dev \ 
	libicu-dev \ 
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install -j$(nproc) gd \
	&& docker-php-ext-install pdo_mysql \
	&& docker-php-ext-install opcache \
	&& docker-php-ext-install mysqli  \
	&& docker-php-ext-install bcmath  \
	&& docker-php-ext-install zip  \
	&& docker-php-ext-install -j$(nproc) intl  \
	&& docker-php-ext-install gettext \
	&& rm -r /var/lib/apt/lists/*


RUN pecl install redis-5.0.2 \
    && docker-php-ext-enable redis

#  bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv imap interbase intl json ldap mbstring mysqli oci8 odbc opcache pcntl pdo pdo_dblib pdo_firebird pdo_mysql pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell readline recode reflection session shmop simplexml snmp soap sockets sodium spl standard sysvmsg sysvsem sysvshm tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter xsl zend_test zip

# 安装 Composer
ENV COMPOSER_HOME /root/composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ENV PATH $COMPOSER_HOME/vendor/bin:$PATH
# 切换国内镜像
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com

# 安装Freetype库 
RUN apt-get -y update && \
    apt-get --no-install-recommends install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd

# Cleanup
RUN rm -rf /usr/src/*

WORKDIR /data
RUN usermod -u 1000 www-data