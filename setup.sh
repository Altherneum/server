apt update
apt install -y wget
#
mkdir -p /scripts/sh
#
wget -O /scripts/sh/setup.mysql.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.mysql.sh'
#
mkdir -p /DiscordBot/data
wget -O /DiscordBot/data/tokens.yml 'https://raw.githubusercontent.com/Altherneum/server/main/DiscordBot/data/tokens.yml'
#
mkdir -p /Serveurs/DataFolder
wget -O /Serveurs/DataFolder/tokens.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/tokens.yml'
#
mkdir -p /Serveurs/Anarchie
wget -O /Serveurs/Anarchie/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Anarchie/server.properties'
wget -O /Serveurs/Anarchie/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/Spawn.zip'
unzip /Serveurs/Anarchie/Spawn.zip -d /Serveurs/Anarchie
#
mkdir -p /Serveurs/Creatif
wget -O /Serveurs/Creatif/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Creatif/server.properties'
#
mkdir -p /Serveurs/Hub
wget -O /Serveurs/Hub/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Hub/server.properties'
wget -O /Serveurs/Hub/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Hub/Spawn.zip'
unzip /Serveurs/Hub/Spawn.zip -d /Serveurs/Hub
#
mkdir -p /Serveurs/RPG
wget -O /Serveurs/RPG/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/RPG/server.properties'
#
mkdir -p /Serveurs/SkyBlock
wget -O /Serveurs/SkyBlock/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/SkyBlock/server.properties'
wget -O /Serveurs/SkyBlock/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/SkyBlock/Spawn.zip'
unzip /Serveurs/SkyBlock/Spawn.zip -d /Serveurs/SkyBlock
#
mkdir -p /Serveurs/Survie
wget -O /Serveurs/Survie/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/server.properties'
wget -O /Serveurs/Survie/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/Spawn.zip'
unzip /Serveurs/Survie/Spawn.zip -d /Serveurs/Survie
#
wget -O /install.sh 'https://raw.githubusercontent.com/Altherneum/server/main/install.sh'
chmod +x /install.sh