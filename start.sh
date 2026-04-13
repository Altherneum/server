# Apache
service apache2 enable ; service apache2 start

# mySQL
service mysql enable ; service mysql start

# Discord
service discord enable ; service discord start

# Code-Server
service code-server@vscode enable ; service code-server@vscode start

# fail2ban
service fail2ban enable ; service fail2ban start

# SendMail
service sendmail enable ; service sendmail start

# OpenDKIM
service opendkim enable ; service opendkim start

# Forgejo
service forgejo enable ; service forgejo start
service forgejo-runner start ; service forgejo-runner enable

# Docker
service docker enable ; service docker start

# Minecraft
/Serveurs/DataFolder/start-auto.sh