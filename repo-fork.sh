#!/bin/bash
## CONFIG:
COMMAND=$1
REPONAME=$2
#REPOHTTP=$!
## Read data
## ! CHECK IF COMMAND NOT EXIST
ls sh repo-user/$COMMAND.sh
## EXECUTE COMMAND
sh repo-user/$COMMAND.sh $REPONAME
# example:
#sh repo.sh-user.sh read apicup
#sh repo.sh-user.sh create test