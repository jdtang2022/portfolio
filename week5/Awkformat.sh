#!/bin/bash
#
# Filename: Awkformat.sh
# @version: 1.0
# Description: using 'awk' command to print 'input.txt' file
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      12/08/2021
# @last modified date: 12/08/2021

# print msg
echo "Googole Server IPs:"

# 'awk' command printing line from 'input.txt'
awk 'BEGIN {
    FS=":";
    print ("________________________________");
    print "| \033[34mServer Type\033[0m | \033[34mIP\033[0m             |";
}
{
    printf ("| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2);
}
END {
    print("________________________________");
}' input.txt

#awk '{
#    
#    print $1
#}' input.txt