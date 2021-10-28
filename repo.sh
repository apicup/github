#!/bin/bash
## CONFIG:
COMMAND=$1
REPONAME=$2
#REPOHTTP=$!
## Read data
## ! CHECK IF COMMAND NOT EXIST
ls sh repo/$COMMAND.sh
## EXECUTE COMMAND
sh repo/$COMMAND.sh $REPONAME
# example:
sh repo.sh read apicup