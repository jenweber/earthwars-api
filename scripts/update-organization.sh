curl --include --request PATCH http://localhost:3000/organizations/2 \
  --header "Content-Type: application/json" \
  --data '{
    "organization": {
      "goal": "waste less cooking fuel"
    }
  }'
