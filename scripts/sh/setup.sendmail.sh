# Add hostname to /etc/hosts on the line "127.0.0.1       localhost"
# like "127.0.0.1       localhost       altherneum.fr"
echo "127.0.0.1 localhost altherneum.fr" >> /etc/hosts

# Create the private & public key
opendkim-genkey -t -s default -d altherneum.fr

# move private key in a secure folder
sudo mkdir /etc/opendkim
sudo cp default.private /etc/opendkim

# Set DKIM configuration /etc/opendkim.conf
echo "Domain altherneum.fr" >> /etc/opendkim.conf
echo "Selector dkim" >> /etc/opendkim.conf
echo "KeyFile /etc/opendkim/default.private" >> /etc/opendkim.conf

# Set DKIM configuration socket /etc/default/opendkim
echo "SOCKET=inet:8891@127.0.0.1" >> /etc/default/opendkim





# Next, update your DNS records by adding a TXT record for the public key. The record name should be default._domainkey followed by your domain (e.g., default._domainkey.customer.domain.edu), and the value should be v=DKIM1; h=sha256; k=rsa; p=<public_key_content> where the public key content is taken from default.txt with -----BEGIN PUBLIC KEY----- and -----END PUBLIC KEY----- removed.
# This record allows receiving mail servers to verify the DKIM signature.

# Modify the Sendmail configuration by editing /etc/mail/sendmail.mc and adding the line INPUT_MAIL_FILTER(\opendkim', `S=inet:8891@127.0.0.1')dnlat the end of the file. Rebuild the Sendmail configuration usingm4 /etc/mail/sendmail.mc > /etc/mail/sendmail.cfand restart both services:sudo service sendmail restartandsudo service opendkim start`.

# Finally, verify the setup by sending a test email and checking the message headers for the DKIM-Signature field and the Authentication-Results header, which should show dkim=pass if the signature is valid.
# Monitoring /var/log/syslog for DKIM-related messages can also confirm successful signing.



# https://search.brave.com/search?q=ubuntu+configure+sendmail&summary=1&conversation=35b2a77a22069e802e498a
# https://search.brave.com/search?q=sendmail+dkim+setup&summary=1&conversation=6a595fcfa8da3d4579c4b5