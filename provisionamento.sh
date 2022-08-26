#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y
apt-get autoremove

echo "Instalando Apache Server"
apt-get install apache2 -y
apt-get install unzip -y

cd /tmp

echo "Preparando a aplicação no servidor Apache"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/

