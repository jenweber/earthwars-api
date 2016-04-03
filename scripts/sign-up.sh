#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "gat@gat.com",
      "password": "password",
      "password_confirmation": "password",
      "organization_id":"1"
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
