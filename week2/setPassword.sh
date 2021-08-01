#!/bin/bash
#
# setPassword.sh
# @version 1.0
# Ask user to input password, hast it using the sha256sum tool
# and save it in a text file 'secret.txt' in the user specified folder
#
# @author Jay <jdtang@our.ecu.edu.au>
# @date: 21/07/2021

# ask user to input folder name and store it in 'folderName' variable
read -p "Enter your folder name: " folderName

# ask user to input password and store it in 'password' variable
read -sp "Enter your password: " password  # -s flag is used to hide user input (silent)

# write password to 'secret.txt' file
#echo "$password" > secret.txt

# use sha256sum to hash input password and write it to 'secret.txt' file
echo "$password" | sha256sum > secret.txt

# create user specified folder if doesn't exist
mkdir -p "$folderName"

# move 'secret.txt' file to user specified folder
mv secret.txt "$folderName"

echo -e "Password Changed!\nGoodbye!"

