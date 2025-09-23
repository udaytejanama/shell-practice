#!/bin/bash

NUMBER1=$1

if [ $NUMBER1 -lt 20 ]; then
    echo "Given number: $NUMBER1 is less than 20"
elif [ $NUMBER1 -eq 20 ]; then
    echo "Given number : $NUMBER1 is equal to 20"
else
    echo "Given number : $NUMBER1 is greater than 20"
fi