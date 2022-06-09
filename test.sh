#! /bin/bash

echo "wait for first input"
read input1

echo "wait for second input"
read input2

if [ "$input1" == "$input2" ]
then
echo " input match "
else
echo " input don't match "
fi