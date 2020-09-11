# fetch remote repos
git fetch --prune

# checkout to master branch
git checkout master

# add modified changes
git add .

# commit changes
git commit -m "auto backup"

# push changes
git push -u origin master
