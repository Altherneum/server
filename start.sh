# Apache
systemctl enable apache2
systemctl start apache2

# mySQL
systemctl enable mysql
systemctl start mysql

# Discord
systemctl enable discord
systemctl start discord

# Code-Server
systemctl enable code-server@vscode
systemctl start code-server@vscode

# fail2ban
systemctl enable fail2ban
systemctl start fail2ban

# SendMail
systemctl enable sendmail
systemctl start sendmail

# OpenDKIM
systemctl enable opendkim
systemctl start opendkim

# Forgejo
systemctl enable forgejo
systemctl start forgejo
# Forgejo-Runner
systemctl start forgejo-runner
systemctl enable forgejo-runner

# Docker
systemctl enable docker
systemctl start docker

# Minecraft
# systemctl start minecraft
#
# systemctl start minecraft@anarchie
# systemctl start minecraft@creatif
systemctl start minecraft@hub
# systemctl start minecraft@opprison
systemctl start minecraft@proxy
# systemctl start minecraft@rpg
systemctl start minecraft@skyblock
# systemctl start minecraft@survie
# systemctl start minecraft@test