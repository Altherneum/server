# Add hostname to /etc/hosts on the line "127.0.0.1       localhost"
# like "127.0.0.1       localhost       altherneum.fr"
# sed 's/old_string/new_string/g'
echo "127.0.0.1 localhost altherneum.fr" >> /etc/hosts
# https://search.brave.com/search?q=ubuntu+configure+sendmail&summary=1&conversation=35b2a77a22069e802e498a

# Create the private & public key
opendkim-genkey -t -s default -d altherneum.fr

# move private key in a secure folder
sudo mkdir /etc/opendkim
sudo cp default.private /etc/opendkim

# Edit the OpenDKIM configuration file (/etc/opendkim.conf) to set the domain, key file path, and selector: Domain customer.domain.edu, KeyFile /etc/opendkim/default.private, and Selector default.
# Update the socket configuration in /etc/default/opendkim to use an internet socket: SOCKET=inet:8891@127.0.0.1.
# https://search.brave.com/search?q=sendmail+dkim+setup&summary=1&conversation=6a595fcfa8da3d4579c4b5


# fichier avec more `more /etc/opendkim.conf`
# #Domain                 example.com
# #Selector               2020
# #KeyFile                /etc/dkimkeys/example.private