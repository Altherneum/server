cd /Serveurs/Survie/
screen -dmS survie java -Xms512M -Xmx512M -Dterminal.jline=false -XX:+ParallelRefProcEnabled -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/Survie/paper.jar nogui
echo screen survie
