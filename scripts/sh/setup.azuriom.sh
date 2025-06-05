rm /var/www/html/index.html
# Azuriom
wget -O /var/www/html/AzuriomInstaller.zip 'https://github.com/Azuriom/AzuriomInstaller/releases/latest/download/AzuriomInstaller.zip'
unzip /var/www/html/AzuriomInstaller.zip -d /var/www/html
rm /var/www/html/AzuriomInstaller.zip # dont seem to work ?
# ResourcePack install
mkdir -p /var/www/html/storage/app/public/zip
wget -O /var/www/html/storage/app/public/zip/resourcePack.zip 'https://github.com/Altherneum/resourcePack/releases/latest/download/resourcePack.zip'
#
useradd www-data
chmod -R 755 /var/www/html && chown -R www-data:www-data /var/www/html
#
a2enmod rewrite
#
wget -O /etc/apache2/sites-available/001.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/apache2/sites-available/001.conf'
wget -O /etc/apache2/sites-available/001-le-ssl.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/apache2/sites-available/001-le-ssl.conf'
a2ensite 001.conf
#
a2dissite 000-default.conf