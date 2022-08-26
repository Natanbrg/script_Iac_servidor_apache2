#!/bin/bash

echo "Criando script de instalação servidor apache2"

echo "Atualizando o servidor"

sudo apt update

echo "Instalando atualizações"

sudo apt upgrade

echo "Instalando servidor web apache"

sudo apt install apache2

echo "Instalando unzip"

sudo apt install unzip

echo "Instalando o gerenciador de downloads wget"

sudo apt install wget

echo "Download da aplicação para teste"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp

echo "Extraindo os arquivos"

unzip /tmp/main.zip -d /tmp

echo "Copiando  os arquivos"

sudo cp -r -v /tmp/linux-site-dio-main/* /var/www/html

echo "Finalizado"
