#!/bin/bash

cimek=("https://iskola.hu" "http://pelda.hu" "ftp://tar.hu" "https://openai.com")

for cim in "${cimek[@]}"
do
    if [[ "$cim" == https://* ]]
    then
        echo "$cim - biztonságos oldal"
    elif [[ "$cim" == http://* ]]
    then
        echo "$cim - nem biztonságos oldal"
    else
        echo "$cim - ismeretlen protokoll"
    fi
done