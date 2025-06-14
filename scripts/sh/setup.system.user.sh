groupadd -r minecraft
useradd -r -g minecraft -d "/Serveurs" -s "/bin/bash" minecraft

groupadd -r discord
useradd -r -g discord -d "/DiscordBot" -s "/bin/bash" discord

groupadd -r vscode
useradd -r -g vscode -d "/home/vscode" -s "/bin/bash" --create-home vscode

password="SuperPassword123!"
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
groupadd -r admin
useradd -g admin -d "/home/admin" -s "/bin/bash" --create-home -p "$pass" admin
