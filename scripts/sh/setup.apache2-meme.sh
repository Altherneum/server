mkdir -p /var/www/meme/

wget -O /var/www/meme/randomPage.html 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/meme/randomPage.html'

chgrp www-data /var/www/meme/randomPage.html 
chown www-data /var/www/meme/randomPage.html