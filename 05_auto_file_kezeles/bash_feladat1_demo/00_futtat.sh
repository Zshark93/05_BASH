#!/bin/bash

scriptnev="01_konf_fileok_ell.sh"

if [ ! -f "$scriptnev" ]
then
    echo "A $scriptnev script nem található."
    exit 1
fi

chmod +x "$scriptnev"
./"$scriptnev"