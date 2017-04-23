FROM nimmis/apache:14.04

MAINTAINER nimmis <kjell.havneskold@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y php5 \ 
        libapache2-mod-php5 \
        php5-fpm \
        php5-cli \
        php5-mysqlnd \
        php5-pgsql\ 
        php5-sqlite\ 
        php5-redis \
        php5-apcu \
        php5-intl \
        php5-imagick \
        php5-mcrypt \
        php5-json \
        php5-gd \
        php5-curl \
        php5-common \
        php5-dev \ 
        php5-imap \ 
        php5-memcache \
        php5-pspell \
        php5-readline \
        php5-recode \
        php5-tidy \
        php5-xmlrpc \
        php5-xsl&& \
php5enmod mcrypt && \
rm -rf /var/lib/apt/lists/* && \

cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

ADD ts_script.sh /etc/my_runonce/ts_script.sh
RUN chmod +x /etc/my_runonce/ts_script.sh


