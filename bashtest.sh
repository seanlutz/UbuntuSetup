#!/bin/bash
message=""
for var in "$@"
do
    message=$message\ $var
done
echo $message

git config credential.helper store
git add -A 
git commit -m "$message"
git push