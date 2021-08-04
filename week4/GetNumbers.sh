#!/bin/bash
#
# GetNumbers.sh
# @version 1.0
# Create a function that retrieves a number within a range from the user.
# The input prompt will repeat until the user types a valid number within the given range.
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @date: 02/08/2021

# This function prints a given error
printError()
{
    echo -e "\033[31mERRor:\033[0m $1"
}

# function to take number from user within the given range
getNumber()
{
    # take first argument input
    read -p "$1: "

    # while loop if the number is not within the given range
    while (( $REPLY < $2 || $REPLY > $3 )); do

        # call printError function
        printError "Input must be between $2 and $3"

        read -p "$1: "

    done
}

echo "This is the start of the script"

getNumber "Please type a number between 1 and 10" 1 10

echo "Thank you!"

getNumber "Please type a number between 50 and 100" 50 100

echo "Thank you!"