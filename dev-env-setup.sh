#!/bin/bash
# Created by: Muhammad Zaki https://github.com/devmuhammadzaki

# Install PHP
echo "Installing PHP ..."
sudo apt install software-properties-common && sudo add-apt-repository ppa:ondrej/php -y
sudo apt update && sudo apt upgrade -y
sudo apt install php8.3 -y

# Install MySQL
echo "Installing MySQL and php-mysql ..."
sudo apt install mysql-server php8.3-mysql php8.3-xdebug -y

# Install phpmyadmin
echo "Installing phpmyadmin ..."
sudo add-apt-repository ppa:phpmyadmin/ppa -y
sudo apt update
sudo apt install phpmyadmin -y

# Install Composer
echo "Installing Composer ..."
sudo apt install curl unzip -y
curl -s https://getcomposer.org/installer | php8.3
sudo mv composer.phar /usr/local/bin/composer

# Install Node
echo "Installing Node.js ..."
curl -sL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install nodejs -y

# Install aws-cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Install git docker
echo "Installing Git ..."
sudo apt install git docker.io -y

# Install MongoDB
sudo apt-get install gnupg
curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
   --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

# Docker Permissions
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock
