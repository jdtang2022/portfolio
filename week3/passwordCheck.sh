#!/bin/bash
#
# passwordCheck.sh
# @version 1.0
# Checking the user input password against the hast stored in 'secret.txt'
# if match, print "Access Granted" and quit with exit code 0
# Otherwise, print "Access Denied" and quit with exit code 1
#
# @author Jay <jdtang@our.ecu.edu.au>
# @date: 21/07/2021

# read user password in silent, assign to 'pwEntered' variable
read -sp "Please enter your password: " pwEntered

# assign 'secret.txt' file location
hashedpwfile="hashFolder/secret.txt"

# use sha256sum -c to check if input matches the stored hash
# --status flag used to silent all output by the command
echo $pwEntered | sha256sum -c --status $hashedpwfile

# check if password matches the stored hash
if [ $? -eq 0 ]; then

	# if password is matched, print this message and quit with exit code 0
	echo -e "\033[34m\\n--Access Granted--\033[0m" && exit 0				# set shell color to blue

else

	# if password is not matched, print this message and quit with exit code 1
	echo -e "\033[31m\\n!!Access Denied!!\033[0m" && exit 1				# set shell color to red

fi
