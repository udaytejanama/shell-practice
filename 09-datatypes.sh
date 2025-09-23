#!/bin/bash

NUMBER1=100.250
NUMBER2=200.252
NAME=DEVOPS
SUM=$(echo $NUMBER1 $NUMBER2 | awk '{print $1 + $2}')
echo "Total sum:: $SUM"
TOTAL=$(($NUMBER1 + $NUMBER2 | bc))

echo "Total sum:: $TOTAL"