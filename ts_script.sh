#!/bin/bash

echo "Enable php short_open_tag \n"
sed -ie 's/short_open_tag = Off/short_open_tag = On/g' /etc/php5/apache2/php.ini

echo "Enable rewrite modul"
a2enmod rewrite

echo "Restart apache"
/etc/init.d/apache2 restart
