#!/bin/bash

NUMBER1=100.250
NUMBER2=200.252
NAME=DEVOPS
sum = $(awk {print $NUMER1+$NUMBER2})
echo "Total sum:: $sum"
TOTAL=$(($NUMBER1 + $NUMBER2 | bc))

echo "Total sum:: $TOTAL"