# Add hostname to /etc/hosts
echo "127.0.0.1 localhost altherneum.fr" >> /etc/hosts

# make folder
sudo mkdir -p /etc/opendkim/keys/altherneum.fr

# Create the private & public key
sudo opendkim-genkey -D /etc/opendkim/keys/altherneum.fr -d altherneum.fr -s default

# Make folder secure
sudo chown -R opendkim:opendkim /etc/opendkim
sudo chmod 0750 /etc/opendkim/keys
sudo chmod 0600 /etc/opendkim/keys/altherneum.fr/default.private
sudo chmod 644 /etc/opendkim/keys/altherneum.fr/default.txt

# Set DKIM configuration /etc/opendkim.conf
echo "Domain altherneum.fr" >> /etc/opendkim.conf
echo "Selector default" >> /etc/opendkim.conf
echo "KeyFile /etc/opendkim/keys/altherneum.fr/default.private" >> /etc/opendkim.conf

# Set DKIM configuration socket /etc/default/opendkim
echo "SOCKET=inet:8891@127.0.0.1" >> /etc/default/opendkim

# Start OpenDKIM
sudo service opendkim start

# Test OpenDKIM keys
# opendkim-testmsg # test message 
# opendkim-testkey -v -v # test key & if usable
# opendkim-testkey -vvvv -d altherneum.fr -s default # Test bis

# Update sendmail configuration
echo "INPUT_MAIL_FILTER(\`opendkim', \`S=inet:8891@127.0.0.1')dnl" >> /etc/mail/sendmail.mc
echo "define(\`confHELO_NAME', \`altherneum.fr')dnl" >> /etc/mail/sendmail.mc
echo "MASQUERADE_AS(\`altherneum.fr')dnl" >> /etc/mail/sendmail.mc
echo "FEATURE(\`masquerade_envelope')dnl" >> /etc/mail/sendmail.mc
echo "FEATURE(\`masquerade_entire_domain')dnl" >> /etc/mail/sendmail.mc

# Allow recieving mail
sed -i "s/DAEMON_OPTIONS(\`Family=inet,  Name=MTA-v4, Port=smtp, Addr=127.0.0.1')dnl/dnl DAEMON_OPTIONS(\`Family=inet,  Name=MTA-v4, Port=smtp')/g" /etc/mail/sendmail.mc

# Add to domain list
echo "altherneum.fr" >> /etc/mail/local-host-names
echo "contact.altherneum.fr" >> /etc/mail/local-host-names
echo "root.altherneum.fr" >> /etc/mail/local-host-names
echo "admin.altherneum.fr" >> /etc/mail/local-host-names

# regenerate host names
makemap hash /etc/mail/local-host-names < /etc/mail/local-host-names

# Rebuild configuration
m4 /etc/mail/sendmail.mc > /etc/mail/sendmail.cf

# Restart sendmail
sudo service sendmail restart

# Test E-Mail
{           
  echo "From: Altherneum@altherneum.fr"
  echo "To: 9j2k37st@gmail.com"
  echo "Subject: Test de création d'e-mail automatique"
  echo ""
  echo "Bonjour,"
  echo ""
  echo "Cet e-mail est un test de fonctionnement automatique."
  echo "Après l'installation du logiciel Linux SendMail, cet e-mail se crée afin de tester l'adresse de l'administrateur et les sécurités DNS (SPF & DKIM)."
  echo ""
  echo ""
  echo "Cordialement,"
  echo "- L'administrateur d'Altherneum.fr"
} | /usr/lib/sendmail -t

# Test E-Mail 2
{           
  echo "From: Altherneum@altherneum.fr"
  echo "To: root@altherneum.fr"
  echo "Subject: Test de réception d'e-mail automatique"
  echo ""
  echo "Bonjour,"
  echo ""
  echo "Cet e-mail est un test de fonctionnement automatique."
  echo "Après l'installation du logiciel Linux SendMail, cet e-mail se crée afin de tester l'adresse de l'administrateur et les sécurités DNS (SPF & DKIM)."
  echo ""
  echo ""
  echo "Cordialement,"
  echo "- L'administrateur d'Altherneum.fr"
} | /usr/lib/sendmail -t

# Auto redirect mails
echo "root: 9j2k37st@gmail.com" >> /etc/aliases
echo "admin: 9j2k37st@gmail.com" >> /etc/aliases
echo "contact: 9j2k37st@gmail.com" >> /etc/aliases
# rebuild aliases
newaliases