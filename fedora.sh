#!/bin/bash

echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│                  PHP Installer                     │ "
echo " #	│                                                    │ "
echo " #	│                  Ahmed Ashraf                      │ "
echo " #	│                                                    │ "
echo " #	│           @ahmedash95 | ahmedash95.com             │ "
echo " #	│                                                    │ "
echo " #	│  Install Your PHP Environment With Only One Script │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "

##############
#update Distro
##############

echo " "
echo "#####################################"
echo "At first i need to update your DISTRO"
echo "#####################################"
echo " "

sudo dnf update -y

echo " "
echo "########################"
echo "INSTALLING APACHE SERVER"
echo "########################"
echo " "

sudo dnf install httpd -y 


echo " "
echo "##############"
echo "INSTALLING PHP"
echo "##############"
echo " "
sudo dnf install  php php-mysql libapache2-mod-php php-mcrypt

echo " "
echo "#########################"
echo "INSTALLING MYSQL DATABASE"
echo "#########################"
echo " "
sudo dnf install mysql mysql-server -y

sudo /usr/bin/mysql_secure_installation

echo " "
echo "#####################"
echo "INSTALLING PHPMYADMIN"
echo "#####################"
echo " "

sudo dnf install phpmyadmin apache2-utils -y


echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf





echo " "
echo "#################"
echo "RESTARTING APACHE"
echo "#################"
echo " "

sudo chkconfig httpd on
sudo chkconfig mysqld on

sudo service httpd restart



echo " "
echo "########################"
echo "INSTALL CURL & COMPOSER"
echo "########################"
echo " "


sudo dnf install curl -y

curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer


echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│          Done ................                     │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "