# Global update shell
wget -O /update.sh 'https://raw.githubusercontent.com/Altherneum/server/main/update.sh'
chmod +x /update.sh
# update & start
wget -O /update-start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/update-start.sh'
chmod +x /update-start.sh
# Setup update
wget -O /setup.sh 'https://raw.githubusercontent.com/Altherneum/server/main/setup.sh'
chmod +x /setup.sh
# installer update
wget -O /install.sh 'https://raw.githubusercontent.com/Altherneum/server/main/install.sh'
chmod +x /install.sh
# stop all service
wget -O /stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/stop.sh'
chmod +x /stop.sh
# start all service
wget -O /start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/start.sh'
chmod +x /start.sh

# azuriom
wget -O /scripts/sh/setup.azuriom.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.azuriom.sh'
chmod +x /scripts/sh/setup.azuriom.sh
# azuriom database config
wget -O /scripts/sh/setup.azuriom-db.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.azuriom-db.sh'
chmod +x /scripts/sh/setup.azuriom-db.sh

# certbot 
wget -O /scripts/sh/setup.certbot.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.certbot.sh'
chmod +x /scripts/sh/setup.certbot.sh

# mysql
wget -O /scripts/sh/setup.mysql.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.mysql.sh'
chmod +x /scripts/sh/setup.mysql.sh

# systemctl
wget -O /scripts/sh/setup.systemd.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.systemd.sh'
chmod +x /scripts/sh/setup.systemd.sh
/scripts/sh/setup.systemd.sh

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