#!/bin/bash

curl --include --request PATCH http://localhost:3000/change-password/1 \
  --header "Authorization: Token token=BAhJIiVkZGE4ZmU5MTRiYmI0YTUwYTFmMGI4ODlkODkzN2M4ZQY6BkVG--84f40f09f2fe56a2c5bb7767fa406e7867f37898" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "cat",
      "new": "pass"
    }
  }'
