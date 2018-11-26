#!/bin/bash

rm -rf public

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
# Add changes to git.

cp -r public/ ../laszewski.github.io

cd ../laszewski.github.io
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ../hugo
