#!/bin/bash

while `true`;
do
    echo -n "> "
    read text

    say -v Alice "$text"
done

exit 0
