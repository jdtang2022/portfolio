#!/bin/bash
# megeFolderMaker.sh
# @version 1.0
# This script is for creating multi folders in one go.
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @date: 30/07/2021

# counter variable
counter=0

# If there aren't two arguments to the script
if (( $#!=2 )); then

    # Print an error and exit
    echo "Error, provide two numbers!" && exit 1

fi

# For every number between the first argument and the last
for (( i=$1;i<=$2;i++ ))

do

    # Create a new folder for that number
    echo -e '\033[31m'Creating directory number $i'\033[0m'

    mkdir "week$i"

    ((counter++))

done

# print number of directory created
echo -e "\033[33mNumber of Folder Created: $counter\033[0m"