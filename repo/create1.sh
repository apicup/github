#!/bin/bash
## CONFIG:
USERNAME=$(cat ../.username)
ORGANISATION=$(cat ../.organisation)
PASSWORD=$(cat ../.password)
TOKEN=$(cat ../.token) # Enter your GitHub Authentication Token.  Set this up at: https://github.com/settings/tokens
## Read data
curl "https://api.github.com/users/$USERNAME/repos?per_page=100" | grep -o 'git@[^"]*' > github.txt
echo
#cat github.txt
PROJECTPATH=$(pwd)
echo "(1/3) Enter Project Name:"
read PROJECTNAME
# Start
mkdir $PROJECTPATH$PROJECTNAME
cd $PROJECTPATH$PROJECTNAME
echo $PROJECTNAME >> README.md
cp $PROJECTPATH.gitignore .gitignore
git init
git add .
git commit -m "(2/3) First Commit"
curl -i -H "Authorization: token $TOKEN" --data "{\"name\":\"$PROJECTNAME\"}" https://api.github.com/user/repos
git remote add origin https://github.com/$USERNAME/$PROJECTNAME.git
echo "(3/3) Push project"
git push -u origin master
echo "Done!"