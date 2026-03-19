#!/bin/bash

uzenetek=("hello" "ok" "spam ajanlat" "szia" "no" "talalkozunk holnap")

for uzenet in "${uzenetek[@]}"
do
    if [[ "$uzenet" == *spam* ]]
    then
        echo "$uzenet - Tiltott szó"
    elif [ ${#uzenet} -le 3 ]
    then
        echo "$uzenet - Figyelem: túl rövid"
    else
        echo "$uzenet - Rendben"
    fi
done