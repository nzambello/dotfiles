#!/bin/bash
today=$(date | cut -d " " -f 1)
friday=$(echo Fri)
fridayUn=$(echo fri)
venerdi=$(echo Ven)
venerdiUn=$(echo ven)
if  [ "$today" = "$friday" -o "$today" = "$venerdi" -o "$today" = "$fridayUn" -o "$today" = "$venerdiUn" ];
then
    printf "\nPlease don't release stuffs on friday, life is bad enough.\n\n"
else
    fullrelease
fi


