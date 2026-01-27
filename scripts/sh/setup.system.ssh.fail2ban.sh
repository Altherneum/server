# Lancer et activer le démarrage auto
systemctl start fail2ban
systemctl enable fail2ban

# Jails
wget -O /etc/fail2ban/jail.d/sshd.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/fail2ban/jail.d/sshd.conf'
wget -O /etc/fail2ban/jail.d/code-server.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/fail2ban/jail.d/code-server.conf'
wget -O /etc/fail2ban/jail.d/forgejo.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/fail2ban/jail.d/forgejo.conf'
wget -O /etc/fail2ban/jail.d/keeweb.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/fail2ban/jail.d/keeweb.conf'
wget -O /etc/fail2ban/jail.d/keeweb.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/fail2ban/jail.d/404.conf'

# Filter
## SSHD filter exist by default
wget -O /etc/fail2ban/filter.d/apache2auth.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/fail2ban/filter.d/apache2auth.conf'
wget -O /etc/fail2ban/filter.d/apache2auth.conf 'https://raw.githubusercontent.com/Altherneum/server/main/etc/fail2ban/filter.d/apache2error.conf'

# Relancer Fail2Ban pour appliquer les changements
systemctl restart fail2ban

# Vérification
fail2ban-client status
fail2ban-client -d
# Vérification avec status
fail2ban-client status sshd

fail2ban-client status code-server
fail2ban-client status forgejo
fail2ban-client status keeweb

fail2ban-client status 404