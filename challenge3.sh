#!/bin/bash
############################################
#Author: Sumit Gupta                       #
#Email: sumit.gupta7060@gmail.com          #
#This script will accept user input in the #
#form of name and age, and will fetch the  #
#output based on the key or searched value #
############################################
                                   
echo "Enter how many object you want to input"
read input
a=0
while [ $a -lt $input ]
do 
	echo "Enter the values one by one in the form: name<space>age e.g test 10"
	read value
	echo $value >> input.txt  
	a=`expr $a + 1`
done
echo "\n"
echo "\n"

echo "Enter either name or age of a person you would like to know the details:"
read key
echo "\n"
echo "The matching details with the given key $key is as follows:"
echo "\n"
grep -w $key input.txt
grep -q "$key" input.txt
if [[ $? != 0 ]]; then
    echo "No details found with given key!!"
fi
