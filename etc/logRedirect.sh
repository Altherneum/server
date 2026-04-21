# Read each log line from apache piping out
export IFS=
while read -r line; do

    #payload=$line
    payload=$(jq -nc --arg l "$line" '{"content": "\($l)"}')

     payload2=$(echo $payload | sed "s/LineFeed/\\\\n/g")

    curl -v \
    -H "Content-Type: application/json" \
    -X POST \
    -d "$payload2" \
    https://discord.com/api/webhooks/0000000000000000000/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

done