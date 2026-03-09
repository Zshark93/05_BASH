#!/bin/bash

echo "Hány éves vagy?"
read kor

if [ "$kor" -lt 14 ];
then
    echo "Gyerek vagy."
elif [ "$kor" -lt 18 ];
then
    echo "Tinédzser vagy."
else
    echo "Felnőtt vagy."
fi
