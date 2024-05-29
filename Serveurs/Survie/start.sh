cd /Serveurs/Survie/
screen -dmS survie java -Xms64M -Xmx256M -XX:SoftMaxHeapSize=256M -Dterminal.jline=false -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/Survie/paper.jar nogui
echo screen survie
