#This is the script file to setup the server environment

#!bin/bash

set -e

#Updating the server:
sudo apt update && sudo apt upgrade -y

#Install Nginx, mysql server, php
sudo apt install -y nginx mysql-server php-fpm php-mysql curl unzip
sudo systemctl start nginx

#creates Database and user in mysql 
sudo mysql -e "CREATE DATABASE wordpress;"
sudo mysql -e "CREATE USER 'tejas'@'localhost' IDENTIFIED BY 'tejas123';"
sudo mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'tejas'@'localhost';"
sudo mysql -e "FLUSH PRIVILEGES;"

#wordpress directory named projectlemp
sudo mkdir -p /var/www/html/projectlemp
sudo chown -R www-data:www-data /var/www/html/projectlemp
sudo chmod -R 755 /var/www/html/projectlemp

sudo cp nginx/wordpress.conf /etc/nginx/sites-available/projectlemp 
sudo ln -s /etc/nginx/sites-available/projectlemp /etc/nginx/sites-enabled/   # will activate the configuration file from the NGINX’s sites-enabled directory
sudo nginx -t     # will check the file for any syntax errors and test
sudo systemctl restart nginx   #restart the nginx server


#!/bin/bash
# Server Setup Script


# echo "Updating server packages..."
# sudo apt update && sudo apt upgrade -y


# echo "Setting up correct permissions for WordPress..."
# sudo chown -R www-data:www-data /var/www/html/wordpress
# sudo find /var/www/html/wordpress/ -type d -exec chmod 755 {} \;
# sudo find /var/www/html/wordpress/ -type f -exec chmod 644 {} \;

# echo "Restarting Nginx and PHP services..."
# sudo ln -s /etc/nginx/sites-available/projectlemp /etc/nginx/sites-enabled/
# sudo nginx -t
# sudo systemctl restart nginx
# sudo systemctl restart php7.4-fpm
