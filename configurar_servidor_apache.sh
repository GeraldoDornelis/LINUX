#!/bin/bash

echo "Atualizar o servidor"

apt-get update
apt-get upgrade -y

echo "Instalando servido apache"

apt install apache2 -y

echo "instalando unzip"

apt install unzip -y

echo "baixando aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo "enviando projeto para o diretorio do servidor"

unzip main.zip
cd/ linux-site-dio-main
cp -R * /var/www/html/

echo "reiciando serviço do apache"

systemctl restart apache2
