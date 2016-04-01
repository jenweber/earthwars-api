curl --include --request PATCH http://localhost:3000/activities/2 \
  --header "Content-Type: application/json" \
  --data '{
    "activity": {
      "category": "electricity"
    }
  }'
