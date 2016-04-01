curl --include --request PATCH http://localhost:3000/organizations/1 \
  --header "Content-Type: application/json" \
  --data '{
    "organization": {
      "goal": "waste less cooking fuel"
    }
  }'
