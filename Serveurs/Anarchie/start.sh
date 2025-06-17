cd /Serveurs/Anarchie/
screen -dmS anarchie java -Xms128M -Xmx384M -Dterminal.jline=false -XX:+ParallelRefProcEnabled -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/Anarchie/paper.jar nogui
echo screen anarchie