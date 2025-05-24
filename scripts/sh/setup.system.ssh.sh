touch /etc/ssh/sshd_config.d/hardening.conf

echo "PermitRootLogin no" >> /etc/ssh/sshd_config.d/hardening.conf
echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config.d/hardening.conf
# echo "PasswordAuthentication no" >> /etc/ssh/sshd_config.d/hardening.conf # Créer une clef SSH avant d'activer
echo "permitemptypasswords no" >> /etc/ssh/sshd_config.d/hardening.conf

systemctl restart sshd