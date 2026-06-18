# Minecraft - StartFiles
mkdir -p /Serveurs/DataFolder


wget -O /Serveurs/DataFolder/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/stop.sh'
chmod +x /Serveurs/DataFolder/stop.sh
# /Serveurs/DataFolder/stop.sh
service minecraft stop
service minecraft@anarchie stop
service minecraft@creatif stop
service minecraft@hub stop
service minecraft@opprison stop
service minecraft@proxy stop
service minecraft@rpg stop
service minecraft@skyblock stop
service minecraft@survie stop
service minecraft@test stop

mkdir -p /Serveurs/Waterfall
wget -O /Serveurs/Waterfall/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Waterfall/start.sh'
chmod +x /Serveurs/Waterfall/start.sh
wget -O /Serveurs/Waterfall/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Waterfall/stop.sh'
chmod +x /Serveurs/Waterfall/stop.sh
#
mkdir -p /Serveurs/Creatif
wget -O /Serveurs/Creatif/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Creatif/start.sh'
chmod +x /Serveurs/Creatif/start.sh
wget -O /Serveurs/Creatif/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Creatif/stop.sh'
chmod +x /Serveurs/Creatif/stop.sh
#
mkdir -p /Serveurs/Test
wget -O /Serveurs/Test/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Test/start.sh'
chmod +x /Serveurs/Test/start.sh
wget -O /Serveurs/Test/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Test/stop.sh'
chmod +x /Serveurs/Test/stop.sh
#
mkdir -p /Serveurs/Hub
wget -O /Serveurs/Hub/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Hub/start.sh'
chmod +x /Serveurs/Hub/start.sh
wget -O /Serveurs/Hub/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Hub/stop.sh'
chmod +x /Serveurs/Hub/stop.sh
#
mkdir -p /Serveurs/RPG
wget -O /Serveurs/RPG/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/RPG/start.sh'
chmod +x /Serveurs/RPG/start.sh
wget -O /Serveurs/RPG/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/RPG/stop.sh'
chmod +x /Serveurs/RPG/stop.sh
#
mkdir -p /Serveurs/SkyBlock
wget -O /Serveurs/SkyBlock/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/SkyBlock/start.sh'
chmod +x /Serveurs/SkyBlock/start.sh
wget -O /Serveurs/SkyBlock/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/SkyBlock/stop.sh'
chmod +x /Serveurs/SkyBlock/stop.sh
#
mkdir -p /Serveurs/Anarchie
wget -O /Serveurs/Anarchie/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Anarchie/start.sh'
chmod +x /Serveurs/Anarchie/start.sh
wget -O /Serveurs/Anarchie/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Anarchie/stop.sh'
chmod +x /Serveurs/Anarchie/stop.sh
#
mkdir -p /Serveurs/Survie
wget -O /Serveurs/Survie/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/start.sh'
chmod +x /Serveurs/Survie/start.sh
wget -O /Serveurs/Survie/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/stop.sh'
chmod +x /Serveurs/Survie/stop.sh
#
mkdir -p /Serveurs/OPPrison
wget -O /Serveurs/OPPrison/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/OPPrison/start.sh'
chmod +x /Serveurs/OPPrison/start.sh
wget -O /Serveurs/OPPrison/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/OPPrison/stop.sh'
chmod +x /Serveurs/OPPrison/stop.sh


# tokens
mkdir -p /Serveurs/DataFolder
# wget -O /Serveurs/DataFolder/tokens.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/tokens.yml'

# Waterfall config
wget -O /Serveurs/Waterfall/config.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Waterfall/config.yml'
# Velocity config
wget -O /Serveurs/Waterfall/velocity.toml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Waterfall/velocity.toml'
# Geyser-Config
wget -O /Serveurs/Waterfall/plugins/Geyser-BungeeCord/config.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Waterfall/plugins/Geyser-BungeeCord/config.yml'
# Flood gate config
wget -O /Serveurs/DataFolder/flood-gate.config.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/flood-gate.config.yml'

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
wget -O /Serveurs/DataFolder/survie.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/survie.yml'
wget -O /Serveurs/DataFolder/test.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/test.yml'
wget -O /Serveurs/DataFolder/anarchie.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/anarchie.yml'
wget -O /Serveurs/DataFolder/skyblock.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/skyblock.yml'
wget -O /Serveurs/DataFolder/rpg.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/rpg.yml'
wget -O /Serveurs/DataFolder/opprison.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/opprison.yml'
wget -O /Serveurs/DataFolder/creatif.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/creatif.yml'

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
# Paste secret into config
SECRET=$(cat /Serveurs/Waterfall/forwarding.secret) && \
sed -i "s|^    secret: '.*'|    secret: '$SECRET'|" /Serveurs/DataFolder/paper-config/paper-global.yml   
SECRET="" # Empty secret

# server.properties
# wget -O /Serveurs/Anarchie/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Anarchie/server.properties'
# wget -O /Serveurs/Creatif/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Creatif/server.properties'
# wget -O /Serveurs/Hub/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Hub/server.properties'
# wget -O /Serveurs/RPG/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/RPG/server.properties'
# wget -O /Serveurs/SkyBlock/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/SkyBlock/server.properties'
# wget -O /Serveurs/Survie/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/server.properties'
# wget -O /Serveurs/Test/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Test/server.properties'
# wget -O /Serveurs/OPPrison/server.properties 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/OPPrison/server.properties'

# jars
mkdir -p /Serveurs/DataFolder/plugins
wget -O /Serveurs/DataFolder/plugins/plugin.jar 'https://github.com/Altherneum/plugin/releases/latest/download/plugin-1.0-fat.jar'
# wget -O /Serveurs/DataFolder/paper.jar 'https://api.papermc.io/v2/projects/paper/versions/1.21/builds/127/downloads/paper-1.21-127.jar'
wget -O /Serveurs/DataFolder/paper.jar 'https://api.papermc.io/v2/projects/paper/versions/1.21.7/builds/26/downloads/paper-1.21.7-26.jar'
wget -O /Serveurs/DataFolder/paper-upgrade.jar 'https://api.papermc.io/v2/projects/paper/versions/1.21.11/builds/69/downloads/paper-1.21.11-69.jar'
# wget -O /Serveurs/Waterfall/waterfall.jar 'https://api.papermc.io/v2/projects/waterfall/versions/1.21/builds/594/downloads/waterfall-1.21-594.jar'
wget -O /Serveurs/Waterfall/waterfall.jar 'https://api.papermc.io/v2/projects/waterfall/versions/1.21/builds/598/downloads/waterfall-1.21-598.jar'
# wget -O /Serveurs/Waterfall/velocity.jar 'https://api.papermc.io/v2/projects/velocity/versions/3.4.0-SNAPSHOT/builds/521/downloads/velocity-3.4.0-SNAPSHOT-521.jar'
wget -O /Serveurs/Waterfall/velocity.jar 'https://fill-data.papermc.io/v1/objects/0407642d1ed2883100eb823c2805523f191fa637db1f42ac0ec7ef29cbe455a9/velocity-3.5.0-SNAPSHOT-601.jar'
wget -O /Serveurs/DataFolder/plugins/floodgate-paper.jar 'https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/downloads/spigot'
wget -O /Serveurs/DataFolder/plugins/floodgate-sqlite.jar 'https://ci.opencollab.dev/job/GeyserMC/job/Floodgate/job/fix-weird-via-issue/3/artifact/database/sqlite/build/libs/floodgate-sqlite-database.jar'

wget -O /Serveurs/DataFolder/plugins/ViaBackwards.jar 'https://github.com/ViaVersion/ViaBackwards/releases/download/5.9.1/ViaBackwards-5.9.1.jar'
wget -O /Serveurs/DataFolder/plugins/ViaVersion.jar 'https://github.com/ViaVersion/ViaVersion/releases/download/5.9.1/ViaVersion-5.9.1.jar'
wget -O /Serveurs/DataFolder/plugins/WorldEdit.jar 'https://mediafilez.forgecdn.net/files/4586/220/worldedit-bukkit-7.2.15.jar'
# wget -O /Serveurs/DataFolder/plugins/WorldEdit.jar 'https://dev.bukkit.org/projects/worldedit/files/latest'
wget -O /Serveurs/DataFolder/plugins/floodgate.jar 'https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/downloads/velocity'
wget -O /Serveurs/DataFolder/plugins/geyser.jar 'https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/velocity'

# LN-S
wget -O /Serveurs/DataFolder/ln-s.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/ln-s.sh'
chmod +x /Serveurs/DataFolder/ln-s.sh
/Serveurs/DataFolder/ln-s.sh

# structures
mkdir -p /Serveurs/DataFolder/structures
#
wget -O /Serveurs/DataFolder/structures/spawn.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn.yml' # Spawn
wget -O /Serveurs/Hub/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Hub/Spawn.zip'
mkdir /Serveurs/Hub/Spawn
tar -acf /Serveurs/Hub/Spawn-latest.zip /Serveurs/Hub/Spawn/
cp /Serveurs/Hub/Spawn-latest.zip /home/vscode/repo/server/Serveurs/Hub/Spawn-latest.zip
tar -xvf /Serveurs/Hub/Spawn.zip -C /Serveurs/Hub --strip-components=2
#
wget -O /Serveurs/DataFolder/structures/spawn_OPPrison.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn_OPPrison.yml'
wget -O /Serveurs/OPPrison/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/OPPrison/Spawn.zip'
mkdir /Serveurs/OPPrison/Spawn
tar -acf /Serveurs/OPPrison/Spawn-latest.zip /Serveurs/OPPrison/Spawn/
cp /Serveurs/OPPrison/Spawn-latest.zip /home/vscode/repo/server/Serveurs/OPPrison/Spawn-latest.zip
tar -xvf /Serveurs/OPPrison/Spawn.zip -C /Serveurs/OPPrison --strip-components=2
#
wget -O /Serveurs/DataFolder/structures/spawn_Survie.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn_Survie.yml'
wget -O /Serveurs/Survie/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/Spawn.zip'
mkdir /Serveurs/Survie/Spawn
tar -acf /Serveurs/Survie/Spawn-latest.zip /Serveurs/Survie/Spawn/
cp /Serveurs/Survie/Spawn-latest.zip /home/vscode/repo/server/Serveurs/Survie/Spawn-latest.zip
tar -xvf /Serveurs/Survie/Spawn.zip -C /Serveurs/Survie --strip-components=2
#
wget -O /Serveurs/DataFolder/structures/spawn_Test.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn_Survie.yml'
wget -O /Serveurs/Test/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/Spawn.zip'
mkdir /Serveurs/Test/Spawn
tar -acf /Serveurs/Test/Spawn-latest.zip /Serveurs/Test/Spawn/
cp /Serveurs/Test/Spawn-latest.zip /home/vscode/repo/server/Serveurs/Test/Spawn-latest.zip
tar -xvf /Serveurs/Test/Spawn.zip -C /Serveurs/Test --strip-components=2
#
wget -O /Serveurs/DataFolder/structures/spawn_Anarchie.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn_Survie.yml'
wget -O /Serveurs/Anarchie/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/Survie/Spawn.zip'
mkdir /Serveurs/Anarchie/Spawn
tar -acf /Serveurs/Anarchie/Spawn-latest.zip /Serveurs/Anarchie/Spawn/
cp /Serveurs/Anarchie/Spawn-latest.zip /home/vscode/repo/server/Serveurs/Anarchie/Spawn-latest.zip
tar -xvf /Serveurs/Anarchie/Spawn.zip  -C /Serveurs/Anarchie --strip-components=2
#
wget -O /Serveurs/DataFolder/structures/spawn_SB.yml 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/structures/spawn_SB.yml'
wget -O /Serveurs/SkyBlock/Spawn.zip 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/SkyBlock/Spawn.zip'
mkdir /Serveurs/SkyBlock/Spawn
tar -acf /Serveurs/SkyBlock/Spawn-latest.zip /Serveurs/SkyBlock/Spawn/
cp /Serveurs/SkyBlock/Spawn-latest.zip /home/vscode/repo/server/Serveurs/SkyBlock/Spawn-latest.zip
tar -xvf /Serveurs/SkyBlock/Spawn.zip -C /Serveurs/SkyBlock --strip-components=2
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

# update-start
wget -O /Serveurs/DataFolder/update-start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/update-start.sh'
chmod +x /Serveurs/DataFolder/update-start.sh

# Give owner to minecraft:minecraft
chown -R minecraft:minecraft /Serveurs
