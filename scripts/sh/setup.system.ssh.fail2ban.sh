# Lancer et activer le démarrage auto
systemctl start fail2ban
systemctl enable fail2ban

# Modification du fichier
touch /etc/fail2ban/jail.d/jail.local

echo "[sshd]" > /etc/fail2ban/jail.d/jail.local
echo "enabled = true" >> /etc/fail2ban/jail.d/jail.local
echo "port = 22" >> /etc/fail2ban/jail.d/jail.local

echo "logpath = /var/log/auth.log" >> /etc/fail2ban/jail.d/jail.local

echo "maxretry = 3" >> /etc/fail2ban/jail.d/jail.local
echo "bantime = 24h" >> /etc/fail2ban/jail.d/jail.local
echo "findtime = 10m" >> /etc/fail2ban/jail.d/jail.local

echo "destemail = 9j2k37st@gmail.com" >> /etc/fail2ban/jail.d/jail.local
echo "sender = fail2ban@altherneum.fr" >> /etc/fail2ban/jail.d/jail.local
echo "mta = sendmail" >> /etc/fail2ban/jail.d/jail.local

# Relancer Fail2Ban pour appliquer les changements
systemctl restart fail2ban

# Vérification
fail2ban-client status
fail2ban-client status sshd