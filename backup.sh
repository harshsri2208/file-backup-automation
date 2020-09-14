# enter the directory
cd ~/crio-surprise-challenge/file-backup-automation

# fetch remote repos
git fetch --prune

# checkout to master branch
git checkout master

git diff --quiet; nochanges=$?

if [ $nochanges -eq 1 ]; then
    # there are changes

    # add modified files
    git add .

    # commit changes
    git commit -m "auto backup $(date)"

    # push changes
    git push -u origin master

fi

