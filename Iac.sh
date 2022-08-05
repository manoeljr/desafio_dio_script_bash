  GNU nano 6.2                                                            IaC.sh                                                                      
#!/bin/bash


echo "Atualizando o servidor"

apt-get update && apt-get upgrade -y


echo "Instalando aplicações necessarias"

apt-get install apache2 -y
apt-get install unzip -y


echo "Desenvolvendo o site de apresentação"
cd /tmp 

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
