#!/bin/bash
#Script de Provisionamento de um Servidor Web (Apache)

echo "Atualizações em andamento"
apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Download do repositório e descompactação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Cópia do repositório para o servidor Apache"
cd linux-site-dio-main
cp -R * /var/www/html/