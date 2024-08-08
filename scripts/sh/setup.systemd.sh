wget -O /etc/systemd/system/minecraft.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft.service'
wget -O /etc/systemd/system/discord.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/discord.service'

# Show service unit
# systemctl list-unit-files --type=service

# Check is service is enabled
systemctl is-enabled minecraft
systemctl is-enabled discord

systemctl daemon-reload