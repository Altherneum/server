ip="";
username="@\` "$USER" \`"

if [ -n "$SSH_CLIENT" ]; then
    ip="\n  - IP \` "$(echo $SSH_CLIENT | cut -f 1 -d ' ')" \`";
    text="📶 \` SSH \`";
else
    text="🖥️ \` Local \`";
fi

who="\n  - \` who -swu \` : \` "$(who -swu)" \`";
pts="\n    - PTS \` "$(who -swu | cut -f 6 -d ' ')" \`";
hour="\` "$(who -swu | cut -f 14 -d ' ')" \`";
date="\n    - Depuis \` "$(who -swu | cut -f 13 -d ' ')" \` $hour";

if [ -z "$ip" ]; then
  networkremote=""
else
  networkremote='echo \"$ip- who -swu : $who<br>  - PTS : $pts<br>  - Depuis : $date<br>\"'
fi

curl --silent -v \
-H "Content-Type: application/json" \
-X POST \
-d "{\"content\":\"- $text  $username $networkremote\"}" \
https://discord.com/api/webhooks/0000000000000000000/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa > /dev/null 2>&1
