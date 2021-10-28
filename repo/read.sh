#!/bin/bash
## CONFIG:
USERNAME=$(cat ../.username)
ORGANISATION=$(cat ../.organisation)
PASSWORD=$(cat ../.password)
TOKEN=$(cat ../.token)
## Read data
curl "https://api.github.com/users/$USERNAME/repos?per_page=100" | grep -o 'git@[^"]*' > github.txt
echo
cat github.txt