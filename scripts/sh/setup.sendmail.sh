# Add hostname to /etc/hosts on the line "127.0.0.1       localhost"
# like "127.0.0.1       localhost       altherneum.fr"
echo "127.0.0.1 localhost altherneum.fr" >> /etc/hosts

# make folder
sudo mkdir -p /etc/opendkim/keys/altherneum.fr

# Create the private & public key
# opendkim-genkey -t -s default -d altherneum.fr
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

# Update sendmail configuration
echo "INPUT_MAIL_FILTER(\`opendkim', \`S=inet:8891@127.0.0.1')dnl" >> /etc/mail/sendmail.mc
echo "define(\`confHELO_NAME', \`altherneum.fr')dnl" >> /etc/mail/sendmail.mc
echo "MASQUERADE_AS(\`altherneum.fr')dnl" >> /etc/mail/sendmail.mc
echo "FEATURE(\`masquerade_envelope')dnl" >> /etc/mail/sendmail.mc
echo "FEATURE(\`masquerade_entire_domain')dnl" >> /etc/mail/sendmail.mc

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

# Test OpenDKIM keys
# opendkim-testmsg # test message 
# opendkim-testkey -v -v # test key & if usable
# opendkim-testkey -vvvv -d altherneum.fr -s default # Test bis

# https://search.brave.com/search?q=ubuntu+configure+sendmail&summary=1&conversation=35b2a77a22069e802e498a
# https://search.brave.com/search?q=sendmail+dkim+setup&summary=1&conversation=6a595fcfa8da3d4579c4b5
# http://www.opendkim.org/opendkim-genkey.8.html
# https://wiki360.pcr.com/pcr360-wiki/2024.2/configuring-sendmail-with-dkim
# https://bobcares.com/blog/sendmail-dkim-ubuntu/
# https://pritthish-nath.medium.com/configuring-spf-dkim-and-dmarc-with-sendmail-on-ubuntu-18-04-41edfd24fdd2
#
# https://support.google.com/a/answer/3726730?sjid=10285939496893341520-EU#5726
# https://support.google.com/a/answer/81126?visit_id=638989688134418991-373738512&rd=1#authentication
# https://support.google.com/a/answer/33786
# https://support.google.com/a/answer/174124?visit_id=638989688134418991-373738512&rd=1#dkim-turn-on-verify
# https://support.google.com/a/answer/81126
#
# https://wiki.debian.org/opendkim
#############################" DKIM  "
# default._domainkey
# txt
# "v=DKIM1; h=sha256; k=rsa; " "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArEKm3c4iVpWbRwK2yoGguBNIeG70zx9NI9H7Z5mjlVXX9gasCnA6pJFoOaw0akQ4mQYf1qpHNs8P6on+mus66M5E1O05g1b6hzDTNMSnc9ZTJZnUBJ+cZbNVa94JD7Lf+aV3E6pveHU2nfO1vMUeiQXNXy1ZTHnA/CyWN6RXaEGNdaRSYbQutK4DxdJozceLxjl9KlhyjdrtyT" "4U3ZyIcUwulTmUYAJrDhhClPOhE6mRvx13dDA0SJiWarma/onuyIRKpCSEioJpp74aDWL1PKUHCKIq+aRX9rJC24rK50Qw1/Z1rJiBD+BPBo3/BM11Jlc25HV3fi9017JeHZL0ywIDAQAB"
# 
# check DKIM : https://mxtoolbox.com/SuperTool.aspx?action=dkim%3aaltherneum.fr%3adefault&run=toolpage
# And also with : https://dnschecker.org/#TXT/default._domainkey.altherneum.fr
#############################" SPF   "
# @
# txt
# v=spf1 a mx ip4:45.159.229.139 include:contabo.com ~all
# 
# Check SPF : https://mxtoolbox.com/SuperTool.aspx?action=spf
# Or check syntax with : https://vamsoft.com/support/tools/spf-syntax-validator
# Or : https://dnschecker.org/#TXT/spf.altherneum.fr
#############################" DMARC "
# _dmarc
# txt
# v=DMARC1; p=none; rua=mailto:root@altherneum.fr; adkim=r; aspf=r