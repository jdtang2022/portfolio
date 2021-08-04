#!/bin/bash
#
# GuessingGame.sh
# @version 1.0
# Create a function that retrieves a number within a range from the user.
#   - The user is asked to enter the number between 1 - 100
#   - If the number is 42, print 'Correct!'
#   - If the number is less than 42, print 'Too Low!'
#   - If the number is greater than 42, print 'Too HIgh!'
#   - Loop until the user found the correct number (42)
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @date: 02/08/2021

# function print given error
printError()
{
    echo -e "\033[31mERROR:\033[0m $1"
}

# declare and set guess boolean to false
guess=false

# function to take guess number from user until matched
getNumber()
{
    # take user guess
    read -p "$1: "

    # while user guess is wrong, keep looping
    while [ $guess !=  true ]; do

        # if user guess is less than 1 or greater than 100
        # if (( $REPLY < 2 || $REPLY > $3 )) - light variation of if statement for checking expression
        if [[ $REPLY -lt $2 || $REPLY -gt $3 ]]; then

            printError "Input must be between $2 and $3"        # error message

            read -p "$1: "                                      # take user guess input

        # if user guess is less than 42
        elif [ $REPLY -lt 42 ]; then

            echo -e "\033[31mToo Low!\033[0m"                   # print message in red

            read -p "$1: "                                      # take user guess input

        elif [ $REPLY -gt 42 ]; then

            echo -e "\033[31mToo High!\033[0m"                  # print message in red

            read -p "$1: "                                      # take user guess input

        else

            echo -e "\033[34mCorrect!\033[0m"                   # print message in blue

            guess=true                                          # set guess boolean to true

        fi

    done

}

# call getNumber function with 3 arguments
getNumber "Please type a number between 1 an 100" 1 100