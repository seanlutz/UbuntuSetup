#!/bin/bash
git config credential.helper store
git add -A 
git commit -m $1
git push