cd /DiscordBot
screen -XS bot quit
screen -dmS bot java -Xms16M -Xmx32M -jar /DiscordBot/bot.jar
echo screen bot
