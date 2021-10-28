#!/bin/bash
## CONFIG:
USERNAME=$(cat ../.username)
ORGANISATION=$(cat ../.organisation)
PASSWORD=$(cat ../.password)
TOKEN=$(cat ../.token) # Enter your GitHub Authentication Token.  Set this up at: https://github.com/settings/tokens
## Read data
curl "https://api.github.com/users/$USERNAME/repos?per_page=100" | grep -o 'git@[^"]*' > github.txt
cat github.txt