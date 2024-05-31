cd /Serveurs/Waterfall/
screen -dmS waterfall java -Xms64M -Xmx128M -Dterminal.jline=false -XX:+ParallelRefProcEnabled -Dterminal.ansi=true -DIReallyKnowWhatIAmDoingISwear -Dcom.mojang.eula.agree=true -jar /Serveurs/Waterfall/waterfall.jar nogui
echo screen waterfall
