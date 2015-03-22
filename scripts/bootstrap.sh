#!/bin/bash

sudo apt-get update
sudo apt-get install -y unzip

# Apache2
sudo apt-get install -y apache2
sudo sed -i 's/www-data/vagrant/g' /etc/apache2/envvars
sudo chown -R vagrant /var/lock/apache2
sudo service apache2 restart

# PHP
sudo apt-get install -y php5
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysqlnd php5-curl php5-xdebug php5-gd php5-intl php-pear php5-imap php5-mcrypt php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php-soap

sudo php5enmod mcrypt
sudo php5enmod rewrite

# MySQL
sudo DEBIAN_FRONTEND=noninteractive apt-get install -f -y mysql-server

# Nodejs
sudo apt-get install -y nodejs npm

# Setup PHPMyAdmin
cd /vagrant/scripts/var/tmp
rm -rf /vargrant/scripts/var/tmp/*
wget http://downloads.sourceforge.net/project/phpmyadmin/phpMyAdmin/4.3.12/phpMyAdmin-4.3.12-english.zip
unzip phpMyAdmin-4.3.12-english.zip
sudo mv /vagrant/scripts/var/tmp/phpMyAdmin-4.3.12-english /opt
sudo cp /vagrant/scripts/var/config.inc.php /opt/phpMyAdmin-4.3.12-english
sudo cp /vagrant/scripts/var/000-default /etc/apache2/sites-available/default
#clean up
rm -rf /vagrant/scripts/var/tmp/*

sudo service apache2 restart


# Server Stuff
sudo rm -rf /var/www
sudo ln -sf /vagrant/var/www /var/www
echo "DirectoryIndex index.php" > /var/www/.htaccess
echo "(simple)LAMP Development Server" > /var/www/index.php
