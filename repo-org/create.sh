#!/bin/bash
# Make executable with chmod +x create.sh
clear
## CONFIG:
USERNAME=$(cat .username)
ORGANISATION=$(cat .organisation)
MESSAGE=$(cat .message)
PASSWORD=$(cat .password)
TOKEN=$(cat .token) # Enter your GitHub Authentication Token.  Set this up at: https://github.com/settings/tokens
PRIVATE=$(cat .private)
PROJECT_PATH=$( $(pwd) && cd ..)
PROJECT_FOLDER=$1
REPONAME=$1
DESCRIPTION=$1
BRANCHNAME=main
## Create

#echo "(1/8) What is the name of your repository, if there is a space in your name put a hyphens(_) : "
#read REPONAME

#echo "(2/8) What description do you wanna put on your repository : "
#read DESCRIPTION

echo "(5/8) Switch to this path"
cd ..
mkdir $ORGANISATION
cd $ORGANISATION
mkdir $PROJECT_FOLDER
cd $PROJECT_FOLDER

echo "(3/8) Create the repository and set the description online : "
curl -u $USERNAME:$TOKEN https://api.github.com/orgs/$ORGANISATION/repos -d '{"name":"'"$REPONAME"'","description":"'"$DESCRIPTION"'","private":"'"$PRIVATE"'"}'

#echo "(4/8) What is the absolute path to your local project directory : "
#read PROJECT_PATH

echo "(6/8) Initialise the repository locally, create a README.md, add, commit and make a new branch : "
git init
echo "README.md" > README.md
echo "https://github.com/$ORGANISATION/$REPONAME" >> README.md
echo "git@github.com:$ORGANISATION/$REPONAME.git" >> README.md
sleep 2
git add README.md
git commit -m "$MESSAGE"
sleep 2

git branch -M $BRANCHNAME
#ssh-keygen -t rsa -b 4096 -C "$EMAIL"
#ssh -vT git@github.com
echo "(7/8) Add the remote Github repository to your local repository and push : "
#git remote add origin https://$USERNAME:$PASSWORD@github.com/$ORGANISATION/$REPONAME.git
#git remote add origin https://github.com/$USERNAME/$PROJECTNAME.git
#git remote add origin https://github.com/$ORGANISATION/$REPONAME.git
git remote add origin git@github.com:$ORGANISATION/$REPONAME.git
#git remote add origin https://github.com/js-func/test7.git
#git remote add origin https://tom-sapletta-com:$PASSWORD@github.com/$ORGANISATION/$REPONAME.git
#git checkout -b $BRANCHNAME
sleep 2

git push -u origin $BRANCHNAME
#git push -u origin main
#git push

# show the Url
echo "(8/8) Repository is created, please check it : "
echo "https://github.com/$ORGANISATION/$REPONAME"