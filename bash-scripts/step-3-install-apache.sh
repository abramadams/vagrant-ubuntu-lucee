#!/bin/bash

echo "================= START STEP-3-INSTALL-APACHE.SH $(date +"%r") ================="
echo " "
echo "BEGIN installing and configuring apache ..."

#install apache
if [ ! -d "/etc/apache2" ]; then
	apt-get install apache2 -y > /dev/null
	apt-get install mod_perl -y > /dev/null
fi

echo "... Configuring apache ..."
# copy our modified apache config files
cp /vagrant/configs/apache2.conf /etc/apache2/

# restart apache
service apache2 restart > /dev/null

echo "... End installing and configuring apache."
echo " "
echo "================= FINISH STEP-3-INSTALL-APACHE.SH $(date +"%r") ================="
echo " "
