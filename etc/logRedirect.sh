#!bin/sh

# Read each log line from apache piping out
export IFS=
while read -r line; do

    payload=$(jq -nc --arg l "$line" '{"content": "- \($l)"}')

    curl --silent -v \
    -H "Content-Type: application/json" \
    -X POST \
    -d "$payload" \
    https://discord.com/api/webhooks/0000000000000000000/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

done