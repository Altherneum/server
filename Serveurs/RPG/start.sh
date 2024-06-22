cd /Serveurs/RPG/
screen -dmS RPG java -Xms128M -Xmx512M -Dterminal.jline=false -XX:+ParallelRefProcEnabled -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/RPG/paper.jar nogui
echo screen RPG