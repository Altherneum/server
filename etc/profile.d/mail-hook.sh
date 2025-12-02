ip="";

setlogname=$(ps -o user= $(ps -o ppid= $(ps -o ppid= $PPID)))
if [ $setlogname == "root" ]; then
  setlogname=""
fi

if [ -z "$setlogname" ]; then
  username="@\` "$USER" \`"
else
  username="@\` "$setlogname" \` > \` "$USER" \`"
fi

if [ -n "$SSH_CLIENT" ]; then
    ip=$(echo $SSH_CLIENT | cut -f 1 -d ' ');
    text="📶 SSH";
    sender="SSH";
else
    text="🖥️ Local";
    sender="local";
fi

who=$(who -swu);
pts=$(who -swu | cut -f 6 -d ' ');
hour=$(who -swu | cut -f 14 -d ' ');
date=$(who -swu | cut -f 13 -d ' ')" "$hour;

if [ -z "$ip" ]; then
  networkremote=""
else
  networkremote='echo \"- who -swu : $who<br>  - PTS : $pts<br>  - Depuis : $date<br>\"'
fi

{
  echo "From: $sender@altherneum.fr"
  echo "To: root@altherneum.fr"
  echo "Subject: $text - $ip@$username"
  echo "MIME-Version: 1.0"
  echo "Content-Type: text/html; charset="UTF-8""
  echo "<br>"
  echo "<html><body>"
  echo "<img src="https://doc.altherneum.fr/assets/gif/banner.gif" alt='Banner' style='width: 80%; border-radius: 25px; margin-left: 5%;'>"
  echo "<br><br>"
  echo "<h1 style='text-decoration: underline;'>Bonjour,</h1><br>"
  echo "Cet e-mail est un <b style='text-decoration: underline;'>alerte de connexion automatique</b>.<br>"
  echo "<br><br>"
  echo "$ip@$username<br>"
  $networkremote
  echo "<br><br>"
  echo "Cordialement,<br>"
  echo "- L'administrateur d'Altherneum.fr<br><br>"
  echo "<img src="https://doc.altherneum.fr/assets/gif/small.gif" alt='Banner-footer' style='border-radius: 50%; width: 100px;'>"
  echo "</body></html>"
} | /usr/lib/sendmail -t