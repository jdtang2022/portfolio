#!/bin/bash
#
# InternetDownloader.sh
# @version 1.0
# This script used to repeat a prompt for input until the user chooses to exit.
#   - prompt the user to type a website URL to download or type "exit" to "quit"
#   - prompt the user to type a download location
#   - use 'wget' command to download the file
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @date: 30/07/2021

# Take user's input for URL or 'exit' to quit
read -p "Please type the URL of a file or type 'exit' to quit: " userInput

# While Loop to take URL and save location until user chooses to exit
while [ ${userInput,,} != "exit" ]                                  # compare 'exit' with ignore case

do

    # Take user's input for file save location
    read -p "Type the location of where you would like to download the file to: " saveLocation

    echo -e '\033[32m'                                              # set shell to green

    # Use 'wget' command to donwload the file and save in the specified location
    wget -P $saveLocation $userInput

    echo -e '\033[0m'                                               # set shell to normal

    # Take user's input for URL or 'exit' to quit
    read -p "Please type the URL of a file or type 'exit' to quit: " userInput

done

# print goodbye message
echo -e "\033[36mGoodbye!\033[0m"