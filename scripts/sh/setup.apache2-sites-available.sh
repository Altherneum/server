wget -O /etc/apache2/sites-available/001.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/apache2/sites-available/001.conf'
a2ensite 001.conf
#
a2dissite 000-default.conf
#
service apache2 restart