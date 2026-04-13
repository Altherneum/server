# Apache
systemctl apache2 enable
systemctl apache2 start

# mySQL
systemctl mysql enable
systemctl mysql start

# Discord
systemctl discord enable
systemctl discord start

# Code-Server
systemctl code-server@vscode enable
systemctl code-server@vscode start

# fail2ban
systemctl fail2ban enable
systemctl fail2ban start

# SendMail
systemctl sendmail enable
systemctl sendmail start

# OpenDKIM
systemctl opendkim enable
systemctl opendkim start

# Forgejo
systemctl forgejo enable
systemctl forgejo start
# Forgejo-Runner
systemctl forgejo-runner start
systemctl forgejo-runner enable

# Docker
systemctl docker enable
systemctl docker start

# Minecraft
# service minecraft start
#
# service minecraft@anarchie start
# service minecraft@creatif start
service minecraft@hub start
# service minecraft@opprison start
service minecraft@proxy start
# service minecraft@rpg start
service minecraft@skyblock start
# service minecraft@survie start
# service minecraft@test start