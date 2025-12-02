# Global update shell
wget -O /update.sh 'https://raw.githubusercontent.com/Altherneum/server/main/update.sh'
chmod +x /update.sh
# update & start
wget -O /update-start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/update-start.sh'
chmod +x /update-start.sh
# Setup update
wget -O /setup.sh 'https://raw.githubusercontent.com/Altherneum/server/main/setup.sh'
chmod +x /setup.sh
# installer update
wget -O /install.sh 'https://raw.githubusercontent.com/Altherneum/server/main/install.sh'
chmod +x /install.sh
# stop all service
wget -O /stop.sh 'https://raw.githubusercontent.com/Altherneum/server/main/stop.sh'
chmod +x /stop.sh
# start all service
wget -O /start.sh 'https://raw.githubusercontent.com/Altherneum/server/main/start.sh'
chmod +x /start.sh

# user creation
wget -O /scripts/sh/setup.system.user.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.system.user.sh'
chmod +x /scripts/sh/setup.system.user.sh

# SSH configuration
wget -O /scripts/sh/setup.system.ssh.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.system.ssh.sh'
chmod +x /scripts/sh/setup.system.ssh.sh

# SSH WebHook
# wget -O /etc/ssh/sshrc 'https://raw.githubusercontent.com/Altherneum/server/main/etc/ssh/sshrc' # Avoid to replace, as it contain a Discord webhook token

# profile.d Discord WebHook
# wget -O /etc/profile.d/discord-webhook.sh 'https://raw.githubusercontent.com/Altherneum/server/main/etc/profile.d/discord-webhook.sh' # Avoid to replace, as it contain a Discord webhook token

# profile.d mail hook
wget -O /etc/profile.d/mail-hook.sh 'https://raw.githubusercontent.com/Altherneum/server/main/etc/profile.d/mail-hook.sh'

# Fail2Ban configuration
wget -O /scripts/sh/setup.system.ssh.fail2ban.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.system.ssh.fail2ban.sh'
chmod +x /scripts/sh/setup.system.ssh.fail2ban.sh

# azuriom
wget -O /scripts/sh/setup.azuriom.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.azuriom.sh'
chmod +x /scripts/sh/setup.azuriom.sh
# azuriom database config
wget -O /scripts/sh/setup.azuriom-db.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.azuriom-db.sh'
chmod +x /scripts/sh/setup.azuriom-db.sh

# certbot 
wget -O /scripts/sh/setup.certbot.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.certbot.sh'
chmod +x /scripts/sh/setup.certbot.sh

# mysql
wget -O /scripts/sh/setup.mysql.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.mysql.sh'
chmod +x /scripts/sh/setup.mysql.sh

# systemctl
wget -O /scripts/sh/setup.systemd.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.systemd.sh'
chmod +x /scripts/sh/setup.systemd.sh
/scripts/sh/setup.systemd.sh

# MOTD
wget -O /scripts/sh/setup.system.motd.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.system.motd.sh'
chmod +x /scripts/sh/setup.system.motd.sh
/scripts/sh/setup.system.motd.sh

# Discord
mkdir -p /DiscordBot
wget -O /DiscordBot/update.sh 'https://raw.githubusercontent.com/Altherneum/server/main/DiscordBot/update.sh'
chmod +x /DiscordBot/update.sh
/DiscordBot/update.sh

# Minecraft
mkdir -p /Serveurs/DataFolder
wget -O /Serveurs/DataFolder/update.sh 'https://raw.githubusercontent.com/Altherneum/server/main/Serveurs/DataFolder/update.sh'
chmod +x /Serveurs/DataFolder/update.sh
/Serveurs/DataFolder/update.sh

# Fail2Ban
## Jails
wget -O /etc/fail2ban/jail.d/sshd.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/fail2ban/jail.d/sshd.conf'
wget -O /etc/fail2ban/jail.d/code-server.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/fail2ban/jail.d/code-server.conf'
## Filter
### SSHD filter exist by default
wget -O /etc/fail2ban/filter.d/code-server.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/fail2ban/filter.d/code-server.conf'


# Clean /tmp
wget -O /scripts/sh/clean.tmp.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/clean.tmp.sh'
chmod +x /scripts/sh/clean.tmp.sh
/scripts/sh/clean.tmp.sh