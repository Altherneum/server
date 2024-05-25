cd /Serveurs/Hub/
screen -dmS hub java -Xms256M -Xmx512M -XX:SoftMaxHeapSize=256M -Dterminal.jline=false -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/Hub/paper.jar nogui
echo screen hub
