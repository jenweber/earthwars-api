#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "name":"Admin5",
      "email": "admin5@admin.com",
      "password": "admin",
      "password_confirmation": "admin",
      "organization_id":"1",
      "admin":true
    }
  }'

# curl --include --request POST http://localhost:3000/sign-up \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "cat@cat.com",
#       "password": "password",
#       "password_confirmation": "password"
#     }
#   }'
