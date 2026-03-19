#!/bin/bash

csomagok=(1 4 12 2 9 15)

for suly in "${csomagok[@]}"
do
    if [ $suly -le 2 ]
    then
        echo "$suly kg - könnyű csomag"
    elif [ $suly -le 10 ]
    then
        echo "$suly kg - közepes csomag"
    else
        echo "$suly kg - nehéz csomag"
    fi
done