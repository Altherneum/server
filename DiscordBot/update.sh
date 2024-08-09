mkdir -p /DiscordBot


wget -O /DiscordBot/stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/DiscordBot/stop.sh'
chmod +x /DiscordBot/stop.sh
/DiscordBot/stop.sh


wget -O /DiscordBot/bot.jar 'https://github.com/Altherneum/bot/releases/latest/download/bot-1.0-fat.jar'


# token
mkdir -p /DiscordBot/data
# wget -O /DiscordBot/data/tokens.yml 'https://raw.githubusercontent.com/Altherneum/server/main/DiscordBot/data/tokens.yml'


mkdir -p /DiscordBot/Data # bot data


# start
wget -O /DiscordBot/start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/DiscordBot/start.sh'
chmod +x /DiscordBot/start.sh

# running discord bot
# echo ~ Starting Discord Bot
# /DiscordBot/start.sh
# systemctl enable discord
# systemctl start discord