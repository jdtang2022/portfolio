#!/bin/bash
#
# second.sh
# @version 1.0
# Script receives input from the command line while executed.
# Each argument typed into the command line is referred to by a special numeric variable "$1".
# Execute this code by providing the value for $1 by typing into the command line after the path to the script.
#	eg.	./second.sh Jay
#
# @author Jay <jdtang@our.ecu.edu.au>
# @date: 14/07/2021

# print 'Hi there' message
echo "Hi there!"

# argument $1 receive input from the command line, then print out with the message
echo "It's good to see you $1!"

# exit with success
exit 0
