sudo apt install -y dovecot-imapd dovecot-pop3d
# mail config
sed -i 's|^mail_location =.*|mail_location = mbox:~/mail:INBOX=/var/mail/%u|' /etc/dovecot/conf.d/10-mail.conf
# auth config
sed -i 's|^auth_mechanisms =.*|auth_mechanisms = plain login|' /etc/dovecot/conf.d/10-auth.conf
sed -i 's|^#disable_plaintext_auth = yes|disable_plaintext_auth = no|' /etc/dovecot/conf.d/10-auth.conf

echo "protocols = imap pop3" >> /etc/dovecot/dovecot.conf

systemctl restart dovecot
systemctl enable dovecot

if (timeout 3 bash -c "cat < /dev/null > /dev/tcp/localhost/143") 2>/dev/null; then
    echo "Connected"
else
    echo "Failed"
fi