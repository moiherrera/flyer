API="http://localhost:4741"
URL_PATH="/flyers"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "flyer": {
      "name": "'"${TEXT}"'"
    }
  }'

echo
