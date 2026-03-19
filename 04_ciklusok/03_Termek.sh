#!/bin/bash

szabadHelyek=(0 3 12 1 0 8)

for hely in "${szabadHelyek[@]}"
do
    if [ $hely -eq 0 ]
    then
        echo "$hely - megtelt"
    elif [ $hely -ge 1 ] && [ $hely -le 5 ]
    then
        echo "$hely - majdnem tele"
    else
        echo "$hely - van még hely"
    fi
done