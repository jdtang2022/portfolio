#!/bin/bash
#
# foldercopier.sh
# @version 1.0
# This script is to fopy folder (if exist) to a new location.
# Otherwise, print an error message
#
# @author Jay <jdtang@our.ecu.edu.au>
# @date: 22/07/2021

# read folder name from user input, assign it to 'folderName' variable
read -p "Enter the folder name you would like to copy: " folderName

# if the name is a valid directory
if [ -d "$folderName" ]; then

	# read new folder name from user input, assign to 'newFolderName' variable
	read -p "Enter name of the destination folder: " newFolderName

	# copy it to a new location
	cp -r "$folderName" "$newFolderName"

	# print success message
	echo -e '\033[34m'Folder has been copied!'\033[0m'

else

	# otherwise, print error message
	echo "I could not find that folder"

fi

exit 0
