#!/bin/bash

git checkout master
git pull

for tag in $(git tag -l);
do
    echo -e "\n\nPublishing $tag\n"
    git checkout "$tag"
    npm publish
done
