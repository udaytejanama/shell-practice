#!/bin/bash

date=$(date)
echo $date

start_date=$(date +%s)
echo $start_date

sleep 10

end_date=$(date +%s)
echo $end_date

total_timediff=$((end_date - start_date))
echo "total difference between start and end ::$total_timediff"
