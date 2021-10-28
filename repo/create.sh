#!/bin/bash
# Make executable with chmod +x create.sh
clear
## CONFIG:
USERNAME=$(cat ../.username)
ORGANISATION=$(cat ../.organisation)
PASSWORD=$(cat ../.password)
TOKEN=$(cat ../.token) # Enter your GitHub Authentication Token.  Set this up at: https://github.com/settings/tokens
PRIVATE=$(cat ../.token)
## Create

echo "(1/8) What is the name of your repository, if there is a space in your name put a hyphens(_) : "
read REPONAME

echo "(2/8) What description do you wanna put on your repository : "
read DESCRIPTION

echo "(3/8) Create the repositery and set the description online : "
curl -u $USERNAME:$TOKEN https://api.github.com/user/repos -d '{"name":"'"$REPONAME"'","description":"'"$DESCRIPTION"'","private":"'"$PRIVATE"'"}'

echo "(4/8) What is the absolute path to your local project directory : "
read PROJECT_PATH

echo "(5/8) Switch to this path"
cd "$PROJECT_PATH"

echo "(6/8) Initialise the repositery locally, create a README.md, add, commit and make a new branch (main) : "
git init
echo "README.md" > README.md
git add README.md
git commit -m 'Add README.md'
git branch -M main

echo "(7/8) Add the remote Github repositery to your local repositery and push : "
git remote add origin https://$USERNAME:$PASSWORD@github.com/$USERNAME/$REPONAME.git
git push -u origin main

# show the Url
echo "(8/8) Repository is created, please check it : "
echo "https://github.com/$USERNAME/$REPONAME"