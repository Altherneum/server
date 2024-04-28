cd /Serveurs/RPG/
screen -dmS RPG java -Xms512M -Xmx768M -XX:SoftMaxHeapSize=256M -Dterminal.jline=false -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/RPG/paper.jar nogui
echo screen RPG