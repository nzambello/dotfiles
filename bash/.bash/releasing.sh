#!/bin/bash
today=$(date | cut -d " " -f 1)
friday=$(echo Fri)
venerdi=$(echo Ven)
if  [ "$today" = "$friday" -o "$today" = "$venerdi" ];
then
    printf "\nPlease don't release stuffs on friday, life is bad enough.\n\n"
else
    fullrelease
fi


