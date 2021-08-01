#!/bin/bash
# simpleCalculator.sh
# @version 1.0
# This script uses conditional logic and arithmetic expressions to make simple calculation.
# Users can do addtion, subtraction, multiplication and division of 2 integers.
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @date: 29/07/2021

# Welcome message
echo -e '\033[33m'Welcome to Simple Calculator!!'\033[0m'

# Take first user input
read -p "Enter your first number: " a           # first number

# Take second user input
read -p "Enter your second number: " b          # second number

# Operation Menu
echo "Choose your operation choice:"
echo -e '\033[34m'1. Addition'\033[0m'          # blue output
echo -e '\033[32m'2. Subtraction'\033[0m'       # green output
echo -e '\033[31m'3. Multiplication'\033[0m'    # red output
echo -e '\033[35m'4. Division'\033[0m'          # purple output

# Take user choice
read choice

# Switch case to perform calculortor
case $choice in
1)
    res=`echo $a + $b | bc`
    sign="+"                            # set sign symbol accordingly to user's choice
    colorCode="4m"                      # set last 2 chars of color code to blue for result output
;;
2)
    res=`echo $a - $b | bc`
    sign="-"
    colorCode="2m"                      # set last 2 chars of color code to green for result output
;;
3)
    res=`echo $a \* $b | bc`
    sign="x"
    colorCode="1m"                      # set last 2 chars of color code to red for result output
;;
4)
    res=`echo "scale=2; $a / $b" | bc`  # scale=2 -- 2 decimal places
    sign="/"
    colorCode="5m"                      # set last 2 chars of color code to purple for result output
;;
*)  
    echo "Invalid Choice!"
    exit 1;
;;
esac

# print result
echo -e "\033[3$colorCode"Result: $a $sign $b = $res"\033[0m"
