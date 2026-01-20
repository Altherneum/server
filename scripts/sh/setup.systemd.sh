# Discord
wget -O /etc/systemd/system/discord.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/discord.service'
# Minecraft services
wget -O /etc/systemd/system/minecraft.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft.service'
# Minecraft @ services
wget -O /etc/systemd/system/minecraft@anarchie.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft@anarchie.service'
wget -O /etc/systemd/system/minecraft@creatif.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft@creatif.service'
wget -O /etc/systemd/system/minecraft@hub.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft@hub.service'
wget -O /etc/systemd/system/minecraft@opprison.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft@opprison.service'
wget -O /etc/systemd/system/minecraft@proxy.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft@proxy.service'
wget -O /etc/systemd/system/minecraft@rpg.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft@rpg.service'
wget -O /etc/systemd/system/minecraft@skyblock.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft@skyblock.service'
wget -O /etc/systemd/system/minecraft@survie.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft@survie.service'
wget -O /etc/systemd/system/minecraft@test.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/minecraft@test.service'
# forgejo & runner services
wget -O /etc/systemd/system/forgejo.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/forgejo.service'
wget -O /etc/systemd/system/forgejo-runner.service 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/forgejo-runner.service'

# Show service unit
# systemctl list-unit-files --type=service

# Enable services
# systemctl enable minecraft
systemctl enable discord
#
# systemctl enable minecraft@anarchie
# systemctl enable minecraft@creatif
systemctl enable minecraft@hub
# systemctl enable minecraft@opprison
systemctl enable minecraft@proxy
# systemctl enable minecraft@rpg
systemctl enable minecraft@skyblock
systemctl enable minecraft@survie
systemctl enable minecraft@test
#
systemctl enable forgejo
systemctl enable forgejo-runner


# Check is service is enabled
# systemctl is-enabled minecraft
systemctl is-enabled discord
#
# systemctl is-enabled minecraft@anarchie
# systemctl is-enabled minecraft@creatif
systemctl is-enabled minecraft@hub
# systemctl is-enabled minecraft@opprison
systemctl is-enabled minecraft@proxy
# systemctl is-enabled minecraft@rpg
systemctl is-enabled minecraft@skyblock
systemctl is-enabled minecraft@survie
systemctl is-enabled minecraft@test
#
systemctl is-enable forgejo
systemctl is-enable forgejo-runner

systemctl daemon-reload