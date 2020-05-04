#!/bin/bash

CYAN='\033[1;34m'
RESET='\033[0m'

for dir in $(ls -Ad *$1*/);
do
    cd $dir
    echo -e "> ${CYAN}${dir}${RESET}\n"

    if [[ -d .git ]];
    then
        git fetch && git pull
    else
        svn up
    fi

    cd ..
    echo ""
done
