#!/bin/bash
################################
#Author  : Bhanu Teja
#Date    : 25/02/2024
#project : Git using ShellScripting
################################
set -x
  echo "creating a directory"
      mkdir git_project
      cd git_project
  echo "creating a file"
  echo "This is an example file using in this project" > example1
  echo "listing the contents of the file"
      cat example1
  echo "installing the git"
      sudo yum install -y git
  echo "initializing the git repository"
      git init
  echo "adding the file to the repository"
      git add .
  echo "commiting the changes"
      git commit -m "This is my first commit"
  echo "pushing the code to the remote repository"
      read -p "Enter your GitHub username: " username
      read -s -p "Enter your GitHub Personal Access Token: " password
      git push "https://$username:$password@github.com/practice-04/shellscripting-git" master
#removing the password from the password variable
      unset password
  echo "creating a new branch "
      git checkout -b branch1
  echo "editing the file"
     echo "this is the second version of the file " >> example1
  echo "tracking the files,it will giveone untracked file which is not added and committed"
     git status 
  echo "adding the edited file"
     git add .
  echo "committing the changes to the edited file"
     git commit -m "This is my second commit"
  echo "commits of the branch1 branch"
     git log 
  echo "switching back to the main branch and merging the branch"
     git checkout master
     git branch
     git merge branch1
  echo "listing the commits of main branch "
     git log
#To get a one line log use the below command
  echo "getting the logs in one line"
     git log --oneline
  echo "deleting the branch"
     git branch -d branch1
#end of the script
