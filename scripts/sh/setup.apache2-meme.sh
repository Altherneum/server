mkdir -p /var/www/meme/

wget -O /var/www/meme/index.html 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/meme/randomPage.html'

sudo chown -R www-data:www-data /var/www/meme/