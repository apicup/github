#!/bin/bash
## CONFIG:
COMMAND=$1
REPONAME=$2
#REPOHTTP=$!
## Read data
## ! CHECK IF COMMAND NOT EXIST
ls sh repo-org/$COMMAND.sh
## EXECUTE COMMAND
sh repo-org/$COMMAND.sh $REPONAME
# example:
#sh repo-user.sh read apicup
#sh repo-user.sh create test