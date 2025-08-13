cd /Serveurs/Test/
screen -dmS test java -Xms512M -Xmx768M -Dterminal.jline=false -XX:+ParallelRefProcEnabled -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/Test/paper.jar nogui
echo screen test