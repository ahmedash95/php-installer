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

sudo apt-get update -y


echo " "
echo "########################"
echo "INSTALLING Git          "
echo "########################"
echo " "
sudo apt-get install git -y

echo " "
echo "########################"
echo "INSTALLING NGINX SERVER"
echo "########################"
echo " "

sudo apt-get install nginx -y 


echo " "
echo "##############"
echo "INSTALLING PHP"
echo "##############"
echo " "
sudo apt-get install php -y

echo " "
echo "##############"
echo "INSTALLING PHP Important Extensions"
echo "##############"
echo " "

sudo apt-get install php-mcrypt php-curl php-zip php-gd php-intl php-mbstring -y --force-yes

echo " "
echo "#################"
echo "RESTARTING APACHE"
echo "#################"
echo " "

sudo service nginx restart



echo " "
echo "########################"
echo "INSTALL CURL & COMPOSER"
echo "########################"
echo " "


sudo apt-get install curl -y

curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer


echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│          Done ................                     │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "
