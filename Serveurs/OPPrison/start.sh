cd /Serveurs/OPPrison/
screen -dmS OPPrison java -Xms512M -Xmx1536M -XX:SoftMaxHeapSize=256M -Dterminal.jline=false -XX:+ParallelRefProcEnabled -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/OPPrison/paper.jar nogui
echo screen OPPrison