rm /var/www/html/index.html
# Azuriom
wget -O /var/www/html/AzuriomInstaller.zip 'https://github.com/Azuriom/AzuriomInstaller/releases/latest/download/AzuriomInstaller.zip'
unzip /var/www/html/AzuriomInstaller.zip -d /var/www/html
rm /var/www/html/AzuriomInstaller.zip
#
useradd www-data
chmod -R 755 /var/www/html && chown -R www-data:www-data /var/www/html
#
a2enmod rewrite
#
wget -O /etc/apache2/sites-available/001.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/apache2/sites-available/001.conf'
a2ensite 001.conf
#
a2dissite 000-default.conf
# azuriom files for copyright
mkdir -p /var/www/html/resources/views/custom
wget -O /var/www/html/resources/views/custom/body.blade.php 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/resources/views/custom/body.blade.php'
# azuriom images
mkdir -p /var/www/html/storage/app/public/img
wget -O /var/www/html/storage/app/public/img/background.jpg 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/background.jpg'
wget -O /var/www/html/storage/app/public/img/gif.gif 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/gif.gif'
wget -O /var/www/html/storage/app/public/img/icone.png 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/icone.png'
wget -O /var/www/html/storage/app/public/img/small.gif 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/small.gif'
wget -O /var/www/html/storage/app/public/img/small.png 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/small.png'