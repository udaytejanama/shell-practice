#!/bin/bash

NUMBER1=100
NUMBER2=200
NAME=DEVOPS

SUM=$(echo $NUMBER1 $NUMBER2 | awk '{print $1 + $2}') #For decimal numbers
echo "Total sum:: $SUM"
TOTAL=$(($NUMBER1 + $NUMBER2)) # For integers

echo "Total sum:: $TOTAL"

LEADERS=("MODI","PUTIN","TRUMP","XINPING")
echo "The India leader: ${LEADERS[0]}"