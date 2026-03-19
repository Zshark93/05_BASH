#!/bin/bash

belepesek=("anna" "guest" "root" "bela" "guest" "dani")

for nev in "${belepesek[@]}"
do
    if [ "$nev" = "root" ]
    then
        echo "$nev - Tiltott belépés"
    elif [ "$nev" = "guest" ]
    then
        echo "$nev - Vendég hozzáférés"
    else
        echo "$nev - Normál belépés"
    fi
done