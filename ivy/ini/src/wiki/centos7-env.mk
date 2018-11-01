---
title: Centos 7 部署 Apache、Mysql、Redis、PHP
date: '2018-08-29'
dirmark: '__dir__'
tags:
  - wiki
  - centos
---

# Apache #
:blockquote
	* yum -y install httpd
	* yum -y install mod_ssl mod_perl
	* vi /etc/httpd/conf/httpd.conf  ---> ServerName localhost:80
	* service httpd start
	* service httpd status
	* firewall-cmd --add-service=http --permanent
	* firewall-cmd --add-port=80/tcp --permanent
	* firewall-cmd --reload
	* chkconfig httpd on
:>>

# Mysql #
:blockquote
	* yum -y install mariadb mariadb-server
	* service mariadb start
	* service mariadb status
	* chkconfig mariadb on
	* firewall-cmd --add-service=mysql --permanent
	* firewall-cmd --add-port=3306/tcp --permanent
	* firewall-cmd --reload
	* mysql_secure_installation
	* mysql -u root -p
	* show databases;
	* use mysql;
	* update user set password=password("123456") where user='root';
	* update user set host = '%' where user = 'root';
	* show grants;
	* grant all privileges on *.* to 'root'@'%' with grant option;
	* flush privileges;
:>>

# Modify Mysql Root Password #
:blockquote
	* sudo vi /etc/my.cnf
	* skip-grant-tables
	* sudo systemctl restart mariadb.service
:>>

# Redis #
:blockquote
	* yum install tcl
	* yum install gcc
	* yum -y install wget
	* wget http://download.redis.io/releases/redis-4.0.11.tar.gz
	* tar zxvf redis-4.0.11.tar.gz
	* cd redis-4.0.11
	* make
	* cd src
	* make install
	* ./utils/install_server.sh
	* make test
	* chkconfig --list
	* chkconfig redis_6379 on
	* service redis_6379 status
	* firewall-cmd --zone=public --add-port=6379/tcp --permanent
:>>

# PHP 7.0 #
:blockquote
	* yum install epel-release
	* rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
	* yum --enablerepo=remi-php70 install php
	* yum --enablerepo=remi-php70 install php-xml php-soap php-xmlrpc php-mbstring php-json php-gd php-mcrypt php-mysql php-pear
	* php -v
:>>

# Predis #
:blockquote
	* cd /
	* mkdir cline
	* git clone https://github.com/nrk/predis.git
	* cp -r /cline/predis/ /var/www/html/predis
	* cd /var/www/html
	* touch my.php
	* vi my.php
:>>

:pre php
    <?php
    require "predis/autoload.php";
    Predis\Autoloader::register();
    
    $single_server = array(
    'host' => '127.0.0.1',
    'port' => 6379,
    );
    
    $redis = new Predis\Client($single_server);
    
    try
    {
    	$redis->set('fx', 'supercline.com');
    	$value = $redis->get('fx');
    	var_dump($value);
    }
    catch(Exception $e) 
    {
    	var_dump($e);
    }
    
    
# fix predis permission denied #
:blockquote
	* /usr/sbin/setsebool httpd_can_network_connect=1
:>>