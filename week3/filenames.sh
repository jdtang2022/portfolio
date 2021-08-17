#!/bin/bash
#
# Filename: filename.sh
# @version: 1.0
# Description: The script will go through each line of a given file via command argument
#               - If that line contains a valid filename, print "That file exists"
#               - If that line contains a directory name, print "That's a directory"
#               - Otherwise print "I don't know what that is!"
#               - Test this script with "filenames.txt"
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      30/07/2021
# @last modified date: 17/08/2021

# Assign filename from first argument
FILE=$1

# If there is NO arguments to the script
if (( $#!=1 )); then

    # Print an error and exit
    echo "Error, provide filename!" && exit 1

fi

# For every line in the text file
# Check whether it is a valide filename, directory or not exist
for line in $(cat $FILE)

do

    # print filename
    echo -n "$line - "

    # If statement checking if it is a valid file or directory
    if [ -f "$line" ]; then                                     # check for valid file

        # if file is valid, print this
        echo -e "\033[32mThat file exists\033[0m"

    elif [ -d "$line" ]; then                                   # check for valid directory

        # if a directory, print this
        echo -e "\033[34mThat's a directory\033[0m"

    else

        # Otherwise print this
        echo -e "\033[36mI don't know what that is!\033[0m"

    fi

done

