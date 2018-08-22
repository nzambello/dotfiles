#!/bin/bash

function join_by
{
    local d=$1; shift; echo -n "$1"; shift; printf "%s" "${@/#/$d}";
}

function cdr()
{
    if [[ $# -lt 1 ]];
    then
        dir=$HOME
    else
        path=$(join_by '*/*' "$@")
        path="*$path*"

        dir=$(find . -type d -ipath "$path" | grep -v node_modules | grep -v eggs | head -1)
    fi

    echo "$dir"
    cd "$dir" || return
}

cdr "$@"
