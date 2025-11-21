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

{
  echo "From: $username@altherneum.fr"
  echo "To: root@altherneum.fr"
  echo "Subject: Connexion SSH - $text@$username : $ip"
  echo "MIME-Version: 1.0"
  echo "Content-Type: text/html; charset="UTF-8""
  echo "<br>"
  echo "<html><body>"
  echo "<img src="https://doc.altherneum.fr/assets/gif/banner.gif" alt='Banner' style='width: 80%; border-radius: 25px; margin-left: 5%;'>"
  echo "<br><br>"
  echo "<h1 style='text-decoration: underline;'>Bonjour</h1>,<br>"
  echo "Une connexion <b style='text-decoration: underline;'>SSH</b> a été ouverte.<br>"
  echo "<b>@$username</b> en <b>$text</b> via l'adresse <b><u>$ip</u></b>.<br>"
  echo "Connexions actives : $who.<br>"
  echo "Via le PTS $pts le $date.<br>"
  echo "<br><br>"
  echo "Cordialement,<br>"
  echo "- L'administrateur d'Altherneum.fr<br><br>"
  echo "<img src="https://doc.altherneum.fr/assets/gif/small.gif" alt='Banner-footer' style='border-radius: 50%; width: 100px;'>"
  echo "</body></html>"
} | /usr/lib/sendmail -t