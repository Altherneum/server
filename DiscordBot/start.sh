cd /DiscordBot
screen -XS bot quit
screen -dmS bot java -Xms16M -Xmx64M -XX:SoftMaxHeapSize=64M -jar /DiscordBot/bot.jar
echo screen bot
