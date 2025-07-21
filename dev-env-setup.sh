#!/bin/bash
# Created by: Muhammad Zaki https://github.com/devmuhammadzaki

# Install PHP
echo "Installing PHP ..."
sudo apt install software-properties-common && sudo add-apt-repository ppa:ondrej/php -y
sudo apt update && sudo apt upgrade -y
sudo apt install php8.4 -y

# Install MySQL
echo "Installing MySQL and php-mysql ..."
sudo apt install mysql-server php8.4-mysql php8.4-xdebug -y

# Install phpmyadmin
echo "Installing phpmyadmin ..."
sudo add-apt-repository ppa:phpmyadmin/ppa -y
sudo apt update
sudo apt install phpmyadmin -y

# Install Composer
echo "Installing Composer ..."
sudo apt install curl unzip -y
curl -s https://getcomposer.org/installer | php8.4
sudo mv composer.phar /usr/local/bin/composer

# Install Node
echo "Installing Node.js ..."
curl -sL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install nodejs -y
