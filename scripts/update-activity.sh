curl --include --request PATCH http://localhost:3000/activities/1 \
  --header "Content-Type: application/json" \
  --data '{
    "activity": {
      "user_id": "1"
    }
  }'
