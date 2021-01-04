#!/bin/bash
add = ''
commit = ''

echo 'files to add'
read add
echo 'commit message'
read commit

git add $add &&
git commit -m '$commit' &&
git push
