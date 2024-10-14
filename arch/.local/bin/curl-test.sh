#!/bin/bash

# Endpoint URL
domain="http://mini-challenge.foris.ai"


# # 1. Login
# # ---
# json_data='{
#     "username": "foris_challenge",
#     "password": "ForisChallenge"
# }'
# curl -X POST "${domain}/login" \
#     -H "Content-Type: application/json" \
#     -d "${json_data}" \
#     "${url}"

# # 2. Challenge
# curl "$domain/challenge" \
#     -H "Accept: application/json" \
#     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcyODQzMzcwOCwianRpIjoiOWIzMjQ0OWQtM2M2NC00Zjc3LWEwMjQtZjQ5MGJlM2MwYzVlIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6ImZvcmlzX2NoYWxsZW5nZSIsIm5iZiI6MTcyODQzMzcwOCwiY3NyZiI6IjFhMjdmNjIxLWIzYzktNDJmNy1hNWFhLTQwZGEyMjQ0MmI1OCIsImV4cCI6MTcyODQzNzMwOH0.tHyKiRrlb52GbwwgOlnodE3xUg0RZFDM72yYJvTtkCY"

# # 3. Challenge
# curl -O "$domain/dumps/onlinepsql" \
#     -H "Accept: application/json" \
#     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcyODQzMzcwOCwianRpIjoiOWIzMjQ0OWQtM2M2NC00Zjc3LWEwMjQtZjQ5MGJlM2MwYzVlIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6ImZvcmlzX2NoYWxsZW5nZSIsIm5iZiI6MTcyODQzMzcwOCwiY3NyZiI6IjFhMjdmNjIxLWIzYzktNDJmNy1hNWFhLTQwZGEyMjQ0MmI1OCIsImV4cCI6MTcyODQzNzMwOH0.tHyKiRrlb52GbwwgOlnodE3xUg0RZFDM72yYJvTtkCY"

# 4. Validate
json_data='{
    "number_of_groups": "168",
    "answer": "22"
}'

curl -X POST "$domain/validate" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTcyODQzMzcwOCwianRpIjoiOWIzMjQ0OWQtM2M2NC00Zjc3LWEwMjQtZjQ5MGJlM2MwYzVlIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6ImZvcmlzX2NoYWxsZW5nZSIsIm5iZiI6MTcyODQzMzcwOCwiY3NyZiI6IjFhMjdmNjIxLWIzYzktNDJmNy1hNWFhLTQwZGEyMjQ0MmI1OCIsImV4cCI6MTcyODQzNzMwOH0.tHyKiRrlb52GbwwgOlnodE3xUg0RZFDM72yYJvTtkCY" \
    -d "$json_data"

while true ; do sleep 1; done

