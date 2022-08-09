#!/bin/bash

echo "Atualizar o Servidor..."
apt-get update -y
apt-get upgrade -y

echo "Instalar apache2 e unzip"
apt-get install apache2 -y
apt-get install unzip -y

echo "Acessar o Diretório tmp localizado na raiz"
cd /tmp

echo "Baixar o arquivo zip de exemplo web, e descompactar"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

echo "Acessar a pasta descompactada e copiar * para a pasta padrão do apache"
cd /tmp/linux-site-dio-main
cp -R * /var/www/html/

