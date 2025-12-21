wget -O /etc/apache2/sites-available/001-le-ssl.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/apache2/sites-available/001-le-ssl.conf'
a2ensite 001-le-ssl.conf
#
service apache2 start