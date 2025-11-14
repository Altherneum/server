# Add hostname to /etc/hosts on the line "127.0.0.1       localhost"
# like "127.0.0.1       localhost       altherneum.fr"
# sed 's/old_string/new_string/g'
echo "127.0.0.1 localhost altherneum.fr" >> /etc/hosts
