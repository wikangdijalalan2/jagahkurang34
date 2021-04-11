#!/bin/bash
program=$1 > /dev/null 2>&1
min=$2 > /dev/null 2>&1
max=$4 > /dev/null 2>&1
while [ 1 ]
do
core=$(lscpu | egrep '^CPU\(s\):' | awk -v FS=: '{print $2}' | tr -d '[:blank:]' ) > /dev/null 2>&1
(( full = $core * 100 )) > /dev/null 2>&1
(( low = $(( $full * $min )) / 100 )) > /dev/null 2>&1
(( high = $(( $full * $max )) / 100 )) > /dev/null 2>&1
limit=$(shuf -i $low-$high -n 1) > /dev/null 2>&1
timer=$(shuf -i 100-500 -n 1) > /dev/null 2>&1
sleep $timer > /dev/null 2>&1
screen -X -S limit quit || echo "limit terminated" > /dev/null 2>&1
screen -dmS limit cpulimit -l $limit -e $program > /dev/null 2>&1
done
