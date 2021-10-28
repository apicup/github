# github.apicup.com - clone, push, ..


solution for github api and bash command

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
sh repo.sh create test
```

`./repo/create.sh test`