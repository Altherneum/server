cd /Serveurs/Hub/
screen -dmS hub java -Xms512M -Xmx512M -Dterminal.jline=false -XX:+ParallelRefProcEnabled -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/Hub/paper.jar nogui
echo screen hub
