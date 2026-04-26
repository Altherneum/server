wget -O /var/www/meme/randomPage.html 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/meme/randomPage.html'

mkdir -p /var/www/meme/

chgrp www-data /var/www/meme/randomPage.html 
chown www-data /var/www/meme/randomPage.htmls