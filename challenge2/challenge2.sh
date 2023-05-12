#!/bin/bash
##############################################
# Author: Sumit Gupta                        #
# Email: sumit.gupta7060@gmail.com           #
# This script will accept the server details #
# of the server and prints and stores the    #
# instance's metadata output in json format  #
##############################################

echo "Enter the hostname/FQDN/IP Adress of the Azure VM:\n"
read value
ssh $value "curl -s -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | python -m json.tool" > metadata_"$value"_challenge2.output
echo "\n"
cat metadata_"$value"_challenge2.output
echo "\n"
echo "********* Above output is also saved in the current directory with name - metadata_"$value"_challenge2.output **********"
echo "\n"
