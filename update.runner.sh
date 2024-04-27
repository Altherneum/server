# Global update shell
wget -O /update.sh 'https://raw.githubusercontent.com/Altherneum/server/main/update.sh'
chmod +x /update.sh
# Setup update
wget -O /setup.sh 'https://raw.githubusercontent.com/Altherneum/server/main/setup.sh'
chmod +x /setup.sh
# installer update
wget -O /install.sh 'https://raw.githubusercontent.com/Altherneum/server/main/install.sh'
chmod +x /install.sh

# azuriom
wget -O /setup.azuriom.sh 'https://raw.githubusercontent.com/Altherneum/server/main/setup.azuriom.sh'
chmod +x /setup.azuriom.sh
# azuriom database config
wget -O /setup.azuriom-db.sh 'https://raw.githubusercontent.com/Altherneum/server/main/setup.azuriom-db.sh'
chmod +x /setup.azuriom-db.sh
/setup.azuriom-db.sh
# azuriom files for copyright
wget -O /var/www/html/resources/views/custom/body.blade.php 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/resources/views/custom/body.blade.php'
# azuriom images
wget -O /var/www/html/storage/app/public/img/background.jpg 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/background.jpg'
wget -O /var/www/html/storage/app/public/img/gif.gif 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/gif.gif'
wget -O /var/www/html/storage/app/public/img/icone.png 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/icone.png'
wget -O /var/www/html/storage/app/public/img/small.gif 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/small.gif'

# certbot 
wget -O /setup.certbot.sh 'https://raw.githubusercontent.com/Altherneum/server/main/setup.certbot.sh'
chmod +x /setup.certbot.sh

# mysql
wget -O /setup.mysql.sh 'https://raw.githubusercontent.com/Altherneum/server/main/setup.mysql.sh'
chmod +x /setup.mysql.sh

# Discord
mkdir -p /DiscordBot
wget -O /DiscordBot/update.sh 'https://raw.githubusercontent.com/Altherneum/server/main/DiscordBot/update.sh'
chmod +x /DiscordBot/update.sh
/DiscordBot/update.sh

# Minecraft
mkdir -p /Serveurs/DataFolder
wget -O /Serveurs/DataFolder/update.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/update.sh'
chmod +x /Serveurs/DataFolder/update.sh
/Serveurs/DataFolder/update.sh