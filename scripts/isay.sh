#!/bin/bash

while `true`;
do
    echo -n "> "
    read text

    say "$text"
done

exit 0
