# github.apicup.com - clone, push, ..


solution for github api and bash command

## get token
use in browser
https://github.com/settings/tokens/new?description=APICUP%20GitHub%20integration&scopes=repo%2Cgist%2Cread%3Aorg%2Cworkflow

## Create a Repository

- Create repository on Github
- Copy the address of you repository

search gitbash & open

        Run cd ~
        Run Desktop/

        Run git clone (place your address repository)

        Run cd (name of your repository)

        Past your project which you want to upload in the testing folder on dekstop

        Run (git status)
        Run (git add . )

        Run (git commit -m "write something")
        Run (git push origin master)


## create many repositories at one time

from the file: repos.tx


## Introduction

This function allows you to create a repo with a description to GitHub by simply calling the bash function and answering the prompt questions. The function then creates the repo and pushes up any local repo to GitHub with the same name of the created repo.


As is, this function is used to create a new local repo and push it to GitHub. This will automatically run 'git init' on the local repo and create a new README.md file. If you want to run 'git init' manually and add files before running this function to push to GitHub, you will need to omit 'auto_init' from the request body. Otherwise, this function will fail.

This is a script to create a repository,
+ name it, 
+ put a description, 
+ init the folder locally, 
+ add a new branch (main), 
+ push it to Git Hub and makes it private through the command line automatically. 

It makes me save a lot of times and could make you save times too! 


## Installation
First of all, clone the repositery by doing 

`git clone https://github.com/Soofiaaa/repositery-creator.git` 

After go in the directory of the script and run the following command.

`chmod +x repo/create.sh`

After that, you will need to change certain value in the 
    
```bash
sh repo-user.sh create test
```

`./repo/create.sh test`
