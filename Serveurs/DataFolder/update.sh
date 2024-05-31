# Minecraft - StartFiles
screen -S waterfall -X stuff 'end'$'\n'
mkdir -p /Serveurs/Waterfall
wget -O /Serveurs/Waterfall/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Waterfall/start.sh'
chmod +x /Serveurs/Waterfall/start.sh
#
screen -S creatif -X stuff 'stop'$'\n'
mkdir -p /Serveurs/Creatif
wget -O /Serveurs/Creatif/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Creatif/start.sh'
chmod +x /Serveurs/Creatif/start.sh
#
screen -S hub -X stuff 'stop'$'\n'
mkdir -p /Serveurs/Hub
wget -O /Serveurs/Hub/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Hub/start.sh'
chmod +x /Serveurs/Hub/start.sh
#
screen -S RPG -X stuff 'stop'$'\n'
mkdir -p /Serveurs/RPG
wget -O /Serveurs/RPG/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/RPG/start.sh'
chmod +x /Serveurs/RPG/start.sh
#
screen -S SkyBlock -X stuff 'stop'$'\n'
mkdir -p /Serveurs/SkyBlock
wget -O /Serveurs/SkyBlock/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/SkyBlock/start.sh'
chmod +x /Serveurs/SkyBlock/start.sh
#
screen -S anarchie -X stuff 'stop'$'\n'
mkdir -p /Serveurs/Anarchie
wget -O /Serveurs/Anarchie/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Anarchie/start.sh'
chmod +x /Serveurs/Anarchie/start.sh
#
screen -S survie -X stuff 'stop'$'\n'
mkdir -p /Serveurs/Survie
wget -O /Serveurs/Survie/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/start.sh'
chmod +x /Serveurs/Survie/start.sh
#
screen -S OPPrison -X stuff 'stop'$'\n'
mkdir -p /Serveurs/OPPrison
wget -O /Serveurs/OPPrison/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/OPPrison/start.sh'
chmod +x /Serveurs/OPPrison/start.sh


# tokens
mkdir -p /Serveurs/DataFolder
# wget -O /Serveurs/DataFolder/tokens.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/tokens.yml'

# Waterfall
wget -O /Serveurs/Waterfall/config.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Waterfall/config.yml'

# global config
mkdir -p /Serveurs/DataFolder
wget -O /Serveurs/DataFolder/eula.txt 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/eula.txt'
wget -O /Serveurs/DataFolder/ops.json 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/ops.json'
wget -O /Serveurs/DataFolder/server-icon.png 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/server-icon.png'
wget -O /Serveurs/DataFolder/serverTypeFile.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/serverTypeFile.yml'
wget -O /Serveurs/DataFolder/spigot.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/spigot.yml'
wget -O /Serveurs/DataFolder/bukkit.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/bukkit.yml'

# Server tick & build
wget -O /Serveurs/DataFolder/hub.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/hub.yml'

# Admin files
mkdir -p /Serveurs/DataFolder/players/d0a8d68a-69b6-4dfc-bc03-9679841e7199
wget -O /Serveurs/DataFolder/players/d0a8d68a-69b6-4dfc-bc03-9679841e7199/tag.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/players/d0a8d68a-69b6-4dfc-bc03-9679841e7199/tag.yml'
# Admin player files
mkdir -p /Serveurs/DataFolder/players/d0d42ff0-e2d1-4fb8-81e5-d14c9a22c97b
wget -O /Serveurs/DataFolder/players/d0d42ff0-e2d1-4fb8-81e5-d14c9a22c97b/tag.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/players/d0d42ff0-e2d1-4fb8-81e5-d14c9a22c97b/tag.yml'

# paper config
mkdir -p /Serveurs/DataFolder/paper-config
wget -O /Serveurs/DataFolder/paper-config/paper-world-defaults.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/paper-config/paper-world-defaults.yml'
wget -O /Serveurs/DataFolder/paper-config/paper-global.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/paper-config/paper-global.yml'

# server.properties
# wget -O /Serveurs/Anarchie/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Anarchie/server.properties'
# wget -O /Serveurs/Creatif/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Creatif/server.properties'
# wget -O /Serveurs/Hub/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Hub/server.properties'
# wget -O /Serveurs/RPG/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/RPG/server.properties'
# wget -O /Serveurs/SkyBlock/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/SkyBlock/server.properties'
# wget -O /Serveurs/Survie/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/server.properties'
# wget -O /Serveurs/OPPrison/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/OPPrison/server.properties'

# jars
mkdir -p /Serveurs/DataFolder/plugins
wget -O /Serveurs/DataFolder/plugins/plugin.jar 'https://github.com/Altherneum/plugin/releases/latest/download/plugin-1.0-fat.jar'
wget -O /Serveurs/DataFolder/paper.jar 'https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/84/downloads/paper-1.20.1-84.jar'
wget -O /Serveurs/Waterfall/waterfall.jar 'https://api.papermc.io/v2/projects/waterfall/versions/1.20/builds/536/downloads/waterfall-1.20-536.jar'
wget -O /Serveurs/DataFolder/plugins/ViaBackwards.jar 'https://github.com/ViaVersion/ViaBackwards/releases/download/4.8.1/ViaBackwards-4.8.1.jar'
wget -O /Serveurs/DataFolder/plugins/ViaVersion.jar 'https://github.com/ViaVersion/ViaVersion/releases/download/4.10.2/ViaVersion-4.10.2.jar'
wget -O /Serveurs/DataFolder/plugins/WorldEdit.jar 'https://mediafilez.forgecdn.net/files/4586/220/worldedit-bukkit-7.2.15.jar'
# wget -O /Serveurs/DataFolder/plugins/WorldEdit.jar 'https://dev.bukkit.org/projects/worldedit/files/latest'

# LN-S
wget -O /Serveurs/DataFolder/ln-s.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/ln-s.sh'
chmod +x /Serveurs/DataFolder/ln-s.sh
/Serveurs/DataFolder/ln-s.sh

# structures
mkdir -p /Serveurs/DataFolder/structures
#
wget -O /Serveurs/DataFolder/structures/spawn.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn.yml' # Spawn
wget -O /Serveurs/Hub/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Hub/Spawn.zip'
unzip -o /Serveurs/Hub/Spawn.zip -d /Serveurs/Hub
#
wget -O /Serveurs/DataFolder/structures/spawn_OPPrison.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn_OPPrison.yml'
#
wget -O /Serveurs/DataFolder/structures/spawn_Survie.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn_Survie.yml'
wget -O /Serveurs/Survie/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/Spawn.zip'
unzip -o /Serveurs/Survie/Spawn.zip -d /Serveurs/Survie
#
wget -O /Serveurs/DataFolder/structures/spawn_Anarchie.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn_Survie.yml'
wget -O /Serveurs/Anarchie/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/Spawn.zip'
unzip -o /Serveurs/Anarchie/Spawn.zip -d /Serveurs/Anarchie
#
wget -O /Serveurs/DataFolder/structures/spawn_SB.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn_SB.yml'
wget -O /Serveurs/SkyBlock/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/SkyBlock/Spawn.zip'
unzip -o /Serveurs/SkyBlock/Spawn.zip -d /Serveurs/SkyBlock
#
wget -O /Serveurs/DataFolder/structures/Island.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/Island.yml' # Île SkyBlock
#
wget -O /Serveurs/DataFolder/structures/mine.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/mine.yml' # Mine

# ResourcePack update
mkdir -p /var/www/html/storage/app/public/zip
wget -O /var/www/html/storage/app/public/zip/resourcePack.zip 'https://github.com/Altherneum/resourcePack/releases/latest/download/resourcePack.zip'

# start
wget -O /Serveurs/DataFolder/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/start.sh'
chmod +x /Serveurs/DataFolder/start.sh

# start-auto
wget -O /Serveurs/DataFolder/start-auto.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/start-auto.sh'
chmod +x /Serveurs/DataFolder/start-auto.sh

# running servers
echo ~ Starting Minecraft servers
/Serveurs/DataFolder/start-auto.sh