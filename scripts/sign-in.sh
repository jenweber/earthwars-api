#!/bin/bash

# ADMIN SIGN IN
# curl --include --request POST http://localhost:3000/sign-in \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "admin1@admin.com",
#       "password": "admin"
#     }
#   }'

# REGULAR USER SIGN IN
curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "cat@cat.com",
      "password": "cat"
    }
  }'
