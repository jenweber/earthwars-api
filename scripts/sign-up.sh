#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "dog@dog.com",
      "password": "password",
      "password_confirmation": "password"
    }
  }'

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "cat@cat.com",
      "password": "password",
      "password_confirmation": "password"
    }
  }'
