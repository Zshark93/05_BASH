#!/bin/bash

rendelesek=(450 1200 7600 980 3200 5100)

for rendeles in "${rendelesek[@]}"
do
    if [ $rendeles -lt 1000 ]
    then
        echo "$rendeles - sürgős"
    elif [ $rendeles -le 5000 ]
    then
        echo "$rendeles - normál"
    else
        echo "$rendeles - nagy rendelés"
    fi
done