# Add hostname to /etc/hosts on the line "127.0.0.1       localhost"
# like "127.0.0.1       localhost       altherneum.fr"
echo "127.0.0.1 localhost altherneum.fr" >> /etc/hosts


# make folder
sudo mkdir -p /etc/opendkim/keys/altherneum.fr

# Create the private & public key
# opendkim-genkey -t -s default -d altherneum.fr
sudo opendkim-genkey -D /etc/opendkim/keys/altherneum.fr -d altherneum.fr -s default

## move private key in a secure folder
# sudo cp default.private /etc/opendkim/keys/altherneum.fr
# sudo cp default.txt /etc/opendkim/keys/altherneum.fr

# Make folder secure
sudo chown -R opendkim:opendkim /etc/opendkim/keys/altherneum.fr
sudo chmod 640 /etc/opendkim/keys/altherneum.fr/default.private
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

# Rebuild configuration
m4 /etc/mail/sendmail.mc > /etc/mail/sendmail.cf

# Restart sendmail
sudo service sendmail restart

# Next, update your DNS records by adding a TXT record for the public key. The record name should be default._domainkey followed by your domain (e.g., default._domainkey.customer.domain.edu), and the value should be v=DKIM1; h=sha256; k=rsa; p=<public_key_content> where the public key content is taken from default.txt with -----BEGIN PUBLIC KEY----- and -----END PUBLIC KEY----- removed.
# This record allows receiving mail servers to verify the DKIM signature.

# Finally, verify the setup by sending a test email and checking the message headers for the DKIM-Signature field and the Authentication-Results header, which should show dkim=pass if the signature is valid.
# Monitoring /var/log/syslog for DKIM-related messages can also confirm successful signing.

# Test with a mail
echo "This is a test email" | sendmail 9j2k37st@gmail.com

# https://search.brave.com/search?q=ubuntu+configure+sendmail&summary=1&conversation=35b2a77a22069e802e498a
# https://search.brave.com/search?q=sendmail+dkim+setup&summary=1&conversation=6a595fcfa8da3d4579c4b5
# http://www.opendkim.org/opendkim-genkey.8.html
# https://wiki360.pcr.com/pcr360-wiki/2024.2/configuring-sendmail-with-dkim
# https://bobcares.com/blog/sendmail-dkim-ubuntu/
# https://pritthish-nath.medium.com/configuring-spf-dkim-and-dmarc-with-sendmail-on-ubuntu-18-04-41edfd24fdd2

# check DKIM : https://mxtoolbox.com/SuperTool.aspx?action=dkim%3aaltherneum.fr%3adefault&run=toolpage
# And also with : https://dnschecker.org/#TXT/default._domainkey.altherneum.fr

# Check SPF : https://mxtoolbox.com/SuperTool.aspx?action=spf
# Or check syntax with : https://vamsoft.com/support/tools/spf-syntax-validator
# Or : https://dnschecker.org/#TXT/spf.altherneum.fr

#############################" DKIM "
# default._domainkey
# 300
# TXT
# v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArEKm3c4iVpWbRwK2yoGguBNIeG70zx9NI9H7Z5mjlVXX9gasCnA6pJFoOaw0akQ4mQYf1qpHNs8P6on+mus66M5E1O05g1b6hzDTNMSnc9ZTJZnUBJ+cZbNVa94JD7Lf+aV3E6pveHU2nfO1vMUeiQXNXy1ZTHnA/CyWN6RXaEGNdaRSYbQutK4DxdJozceLxjl9KlhyjdrtyT" "4U3ZyIcUwulTmUYAJrDhhClPOhE6mRvx13dDA0SJiWarma/onuyIRKpCSEioJpp74aDWL1PKUHCKIq+aRX9rJC24rK50Qw1/Z1rJiBD+BPBo3/BM11Jlc25HV3fi9017JeHZL0ywIDAQAB"


#############################" SPF "
# @
# 3600
# TXT
# v=spf1 ip4:45.159.229.139 -all