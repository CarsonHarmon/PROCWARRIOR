#!/usr/local/bin/bash

if [ "$#" -lt 0 ]; then
    echo "USAGE:"
    echo "$0 prog1"
    exit 1
fi

PRG_NAME=$1

rm out/*

SCORE=$(./run1.sh 10 $PRG_NAME ./fork | tail -1)
echo "$PRG_NAME vs ./fork 10: $SCORE" > 'out/test1-1'
SCORE=$(./run1.sh 20 $PRG_NAME ./fork | tail -1)
echo "$PRG_NAME vs ./fork 20: $SCORE" >> 'out/test1-1'
SCORE=$(./run1.sh 30 $PRG_NAME ./fork | tail -1)
echo "$PRG_NAME vs ./fork 30: $SCORE" >> 'out/test1-1'
SCORE=$(./run1.sh 40 $PRG_NAME ./fork | tail -1)
echo "$PRG_NAME vs ./fork 40: $SCORE" >> 'out/test1-1'
SCORE=$(./run1.sh 50 $PRG_NAME ./fork | tail -1)
echo "$PRG_NAME vs ./fork 50: $SCORE" >> 'out/test1-1'
cat out/test1-1
SCORE=$(./run1.sh 10 $PRG_NAME ./freehit | tail -1)
echo "$PRG_NAME vs ./freehit 10: $SCORE" > 'out/test1-2'
SCORE=$(./run1.sh 20 $PRG_NAME ./freehit | tail -1)
echo "$PRG_NAME vs ./freehit 20: $SCORE" >> 'out/test1-2'
SCORE=$(./run1.sh 30 $PRG_NAME ./freehit | tail -1)
echo "$PRG_NAME vs ./freehit 30: $SCORE" >> 'out/test1-2'
SCORE=$(./run1.sh 40 $PRG_NAME ./freehit | tail -1)
echo "$PRG_NAME vs ./freehit 40: $SCORE" >> 'out/test1-2'
SCORE=$(./run1.sh 50 $PRG_NAME ./freehit | tail -1)
echo "$PRG_NAME vs ./freehit 50: $SCORE" >> 'out/test1-2'
cat out/test1-2
SCORE=$(./run1.sh 10 $PRG_NAME ./choi | tail -1)
echo "$PRG_NAME vs ./choi 10: $SCORE" > 'out/test1-3'
SCORE=$(./run1.sh 20 $PRG_NAME ./choi | tail -1)
echo "$PRG_NAME vs ./choi 20: $SCORE" >> 'out/test1-3'
SCORE=$(./run1.sh 30 $PRG_NAME ./choi| tail -1)
echo "$PRG_NAME vs ./choi 30: $SCORE" >> 'out/test1-3'
SCORE=$(./run1.sh 40 $PRG_NAME ./choi | tail -1)
echo "$PRG_NAME vs ./choi 40: $SCORE" >> 'out/test1-3'
SCORE=$(./run1.sh 50 $PRG_NAME ./choi | tail -1)
echo "$PRG_NAME vs ./choi 50: $SCORE" >> 'out/test1-3'
cat out/test1-3
SCORE=$(./run1.sh 10 $PRG_NAME ./fork ./freehit | tail -1)
echo "$PRG_NAME vs ./fork ./freehit  10: $SCORE" > 'out/test1-4'
SCORE=$(./run1.sh 15 $PRG_NAME ./fork ./freehit | tail -1)
echo "$PRG_NAME vs ./fork ./freehit  15: $SCORE" >> 'out/test1-4'
SCORE=$(./run1.sh 20 $PRG_NAME ./fork ./freehit | tail -1)
echo "$PRG_NAME vs ./fork ./freehit 20: $SCORE" >> 'out/test1-4'
SCORE=$(./run1.sh 25 $PRG_NAME ./fork ./freehit | tail -1)
echo "$PRG_NAME vs ./fork ./freehit 25: $SCORE" >> 'out/test1-4'
SCORE=$(./run1.sh 30 $PRG_NAME ./fork ./freehit | tail -1)
echo "$PRG_NAME vs ./fork ./freehit 30: $SCORE" >> 'out/test1-4'
cat out/test1-4
SCORE=$(./run2.sh 10 $PRG_NAME ./fork | tail -1)
echo "$PRG_NAME vs ./fork 10: $SCORE" > 'out/test2-1'
SCORE=$(./run2.sh 20 $PRG_NAME ./fork | tail -1)
echo "$PRG_NAME vs ./fork 20: $SCORE" >> 'out/test2-1'
SCORE=$(./run2.sh 30 $PRG_NAME ./fork | tail -1)
echo "$PRG_NAME vs ./fork 30: $SCORE" >> 'out/test2-1'
SCORE=$(./run2.sh 40 $PRG_NAME ./fork | tail -1)
echo "$PRG_NAME vs ./fork 40: $SCORE" >> 'out/test2-1'
SCORE=$(./run2.sh 50 $PRG_NAME ./fork | tail -1)
echo "$PRG_NAME vs ./fork 50: $SCORE" >> 'out/test2-1'
cat out/test2-1
SCORE=$(./run2.sh 10 $PRG_NAME ./freehit | tail -1)
echo "$PRG_NAME vs ./freehit 10: $SCORE" > 'out/test2-2'
SCORE=$(./run2.sh 20 $PRG_NAME ./freehit | tail -1)
echo "$PRG_NAME vs ./freehit 20: $SCORE" >> 'out/test2-2'
SCORE=$(./run2.sh 30 $PRG_NAME ./freehit | tail -1)
echo "$PRG_NAME vs ./freehit 30: $SCORE" >> 'out/test2-2'
SCORE=$(./run2.sh 40 $PRG_NAME ./freehit | tail -1)
echo "$PRG_NAME vs ./freehit 40: $SCORE" >> 'out/test2-2'
SCORE=$(./run2.sh 50 $PRG_NAME ./freehit | tail -1)
echo "$PRG_NAME vs ./freehit 50: $SCORE" >> 'out/test2-2'
cat out/test2-2
SCORE=$(./run2.sh 10 $PRG_NAME ./choi | tail -1)
echo "$PRG_NAME vs ./choi 10: $SCORE" > 'out/test2-3'
SCORE=$(./run2.sh 20 $PRG_NAME ./choi | tail -1)
echo "$PRG_NAME vs ./choi 20: $SCORE" >> 'out/test2-3'
SCORE=$(./run2.sh 30 $PRG_NAME ./choi| tail -1)
echo "$PRG_NAME vs ./choi 30: $SCORE" >> 'out/test2-3'
SCORE=$(./run2.sh 40 $PRG_NAME ./choi | tail -1)
echo "$PRG_NAME vs ./choi 40: $SCORE" >> 'out/test2-3'
SCORE=$(./run2.sh 50 $PRG_NAME ./choi | tail -1)
echo "$PRG_NAME vs ./choi 50: $SCORE" >> 'out/test2-3'
cat out/test2-3
SCORE=$(./run2.sh 10 $PRG_NAME ./fork ./freehit | tail -1)
echo "$PRG_NAME vs ./fork ./freehit  10: $SCORE" > 'out/test2-4'
SCORE=$(./run2.sh 15 $PRG_NAME ./fork ./freehit | tail -1)
echo "$PRG_NAME vs ./fork ./freehit  15: $SCORE" >> 'out/test2-4'
SCORE=$(./run2.sh 20 $PRG_NAME ./fork ./freehit | tail -1)
echo "$PRG_NAME vs ./fork ./freehit 20: $SCORE" >> 'out/test2-4'
SCORE=$(./run2.sh 25 $PRG_NAME ./fork ./freehit | tail -1)
echo "$PRG_NAME vs ./fork ./freehit 25: $SCORE" >> 'out/test2-4'
SCORE=$(./run2.sh 30 $PRG_NAME ./fork ./freehit | tail -1)
echo "$PRG_NAME vs ./fork ./freehit 30: $SCORE" >> 'out/test2-4'
cat out/test2-4

echo "ARENA 1:" > 'out/output.txt'
echo "---------" >> 'out/output.txt'
cat out/test1-1 >> 'out/output.txt'
cat out/test1-2 >> 'out/output.txt'
cat out/test1-3 >> 'out/output.txt' 
cat out/test1-4 >> 'out/output.txt'
echo " " >> 'out/output.txt'
echo " " >> 'out/output.txt'
echo " " >> 'out/output.txt'
echo "ARENA 2:" >> 'out/output.txt'
echo "---------" >> 'out/output.txt'
cat out/test2-1 >> 'out/output.txt'
cat out/test2-2 >> 'out/output.txt'
cat out/test2-3 >> 'out/output.txt' 
cat out/test2-4 >> 'out/output.txt'
cat out/output.txt
