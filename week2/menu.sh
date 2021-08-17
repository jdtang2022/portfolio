#!/bin/bash
#
# Filename: menu.sh
# @version: 1.0
# Description: Checking the user input password against the hast stored in 'secret.txt'
# 				if match, print "Access Granted" and quit with exit code 0, then display the "Menu"
# 				Otherwise, print "Access Denied" and quit with exit code 1
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      21/02/2021
# @last modified date: 17/08/2021

# run passwordCheck.sh script
./passwordCheck.sh

# if exit code is 0, do this
if test $? -eq 0; then

	# print menu
	echo "Select an option:"
	echo "1. Create a folder"
	echo "2. Copy a folder"
	echo "3. Set a password"

else

	echo "Goodbye"

	exit 1

fi

# read user option
read option

# 'case' statement runs accordingly to user's input choice
case $option in
	
	1) ./folderCreator.sh						# call folderCreator.sh
	;;

	2) ./folderCopier.sh						# call folderCopier.sh
	;;

	3) ./setPassword.sh							# call setPassword.sh
	;;

	*) echo "Invalid Option!"
	;;

esac

