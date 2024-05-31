cd /Serveurs/Anarchie/
screen -dmS anarchie java -Xms512M -Xmx1536M -XX:SoftMaxHeapSize=256M -Dterminal.jline=false -XX:+ParallelRefProcEnabled -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/Anarchie/paper.jar nogui
echo screen anarchie