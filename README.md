# sLAMP Server

This is a simple LAMP server for quick and dirty development with Vagrant.

Packages:

* Ubuntu 12.04.5 LTS (precise) x64
* Apache/2.2.22
* MySQL 5.5.41
* PHP 5.3.10
  * bcmath, bz2, calendar, Core, ctype, curl, date, dba, dom, ereg, exif, fileinfo, filter, ftp, gd, gettext, hash, iconv,imap, intl, json, libxml, mbstring, mcrypt, mhash, ming, mysql, mysqli, mysqlnd, openssl, pcntl, pcre, PDO, pdo_mysql, pdo_sqlite, Phar, posix, ps, pspell, readline, recode, Reflection, session, shmop, SimpleXML, snmp, soap, sockets, SPL, sqlite3, standard, sysvmsg, sysvsem, sysvshm, tidy, tokenizer, wddx, xdebug, xml, xmlreader, xmlrpc
xmlwriter, xsl, zip, zlib
* nodejs 0.6.12
* npm 1.1.4
* MongoDB v3.0.1

#### Usage
Download from [here](https://github.com/jrodriguez-ifuelinteractive/slamp_server/archive/master.zip) and unpack. Navigate to unpacked directory and enter the command
```
vagrant up
```
```
Access server from browser at http://127.0.0.1:8080/
```
PHPMyAdmin
```
http://127.0.0.1:8080/phpmyadmin/
```

#### Credentials

* Apache:
```
Document root: /var/www
```

* MySQL
```
Host: localhost
Username: root
(Empty password)
```
