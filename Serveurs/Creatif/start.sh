cd /Serveurs/Creatif/
screen -dmS creatif java -Xms128M -Xmx384M -Dterminal.jline=false -XX:+ParallelRefProcEnabled -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/Creatif/paper.jar nogui
echo screen creatif