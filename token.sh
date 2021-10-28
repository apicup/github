#!/bin/bash
## CONFIG:
USERNAME=$(cat .username)
ORGANISATION=$(cat .organisation)
PASSWORD=$(cat .password)
TOKEN=$(cat .token)
## CREATE TOKEN FOR USER TO READ/WRITE REPOSITORY AND RIGHTS FOR A PUSH/MERGE REQUEST
