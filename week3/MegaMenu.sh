#!/bin/bash
#
# MegaMenu.sh
# @version 1.0
# Checking the user input password against the hast stored in 'secret.txt'
# if match, print "Access Granted" and quit with exit code 0, then display the "Menu"
# Otherwise, print "Access Denied" and quit with exit code 1
#
# @author Jay <jdtang@our.ecu.edu.au>
# @date: 21/07/2021

# run passwordCheck.sh script
./passwordCheck.sh

# if exit code is 0, do this
if test $? -eq 0; then

	# print menu
	echo -e "\033[33mSelect an option:\033[0m"				# set shell to blue for this line
	echo -e -n "\033[32m"									# set shell to green
	echo "1. Create a folder"
	echo "2. Copy a folder"
	echo "3. Set a password"
	echo "4. Calculator"
	echo "5. Create Week Folders"
	echo "6. Check Filenames"
	echo "7. Download a File"
	echo -e -n "\033[0m"									# set shell to normal
	echo "8. Exit"

else

	# print goodbye message and exit
	echo "Goodbye" && exit 1

fi

# read user option
read option

# While loop to repeat the menu until user select 'exit' option
while [ $option -ne 8 ]

do
	# 'case' statement runs accordingly to user's input choice
	case $option in
		
		1) 	./folderCreator.sh									# call folderCreator.sh
		;;

		2)	 ./folderCopier.sh									# call folderCopier.sh
		;;

		3) 	./setPassword.sh									# call setPassword.sh
		;;

		4) 	./simpleCalculator.sh								# call simpleCalculator.sh
		;;

		5)	# Take two arguments from user input
			read -p "Enter first folder number: " firstFolder
			read -p "Enter last folder number: " lastFolder
			./megaFolderMaker.sh $firstFolder $lastFolder		# call megaFolderMaker.sh
		;;

		6)	# Take filenames from user input
			read -p "Enter filename: " temFilename
			./filenames.sh $temFilename							# call filenames.sh
		;;

		7)	./InternetDownloader.sh								# call InternetDownloader.sh
		;;

		*)	echo -e "\033[31mInvalid Option!!\033[0m"
		;;

	esac

	# print menu
	echo -e "\033[35mSelect an option:\033[0m"				# set shell to purple for this line
	echo -e -n "\033[32m"									# set shell to green
	echo "1. Create a folder"
	echo "2. Copy a folder"
	echo "3. Set a password"
	echo "4. Calculator"
	echo "5. Create Week Folders"
	echo "6. Check Filenames"
	echo "7. Download a File"
	echo -e -n "\033[0m"									# set shell to normal
	echo "8. Exit"

	# read user option
	read option

done

# print goodbye message
echo -e "\033[36mThank You! Goodbye!\033[0m"



