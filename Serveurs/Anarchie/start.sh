cd /Serveurs/Anarchie/
screen -dmS anarchie java -Xms64M -Xmx512M -Dterminal.jline=false -XX:+ParallelRefProcEnabled -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/Anarchie/paper.jar nogui
echo screen anarchie