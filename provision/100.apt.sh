#!/bin/bash
apt-get update --yes
apt-get upgrade --yes
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
apt-get install --yes nginx
apt-get install --yes php
sudo debconf-set-selections <<< 'mysql-server-5.7 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.7 mysql-server/root_password_again password root'
sudo apt-get install mysql-server --yes
sudo apt-get install --yes php7.0-mysql
apt autoremove --yes