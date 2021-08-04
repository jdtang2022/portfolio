#!/bin/bash
#
# printError.sh
# @version 1.0
# Print red "ERROR: " text then user input as argument
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @date: 02/08/2021

# take user's input
read -p "Enter your error message: " errMsg

# printError funtion
printError()
{
    echo -e "\033[31mERROR:\033[0m $1"
}

# call printError() function
printError $errMsg