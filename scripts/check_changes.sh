#!/bin/bash

RED='\033[1;31m'
RESET='\033[0m'

echo -e "\nThese repos have not released changes:\n"

for dir in $(ls -Ad */);
do
    cd "$dir" || exit

    if [ -f "CHANGES.rst" ];
    then
        file='CHANGES.rst'
    elif [ -f "docs/HISTORY.txt" ]
    then
        file='docs/HISTORY.txt'
    else
        file=''
    fi

    if [[ -n $file ]];
    then
        haschanges=$( grep -C 3 "Nothing changed yet" "$file" | grep "unreleased" -c )
        if [[ $haschanges -eq 0 ]];
        then
            echo -e "> ${RED}${dir}${RESET}"
        fi
    fi

    cd ..
done

echo ""
exit 0

