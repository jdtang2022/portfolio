#!/bin/bash 
#
# pwValidator.sh
# @versio 1.0
# Validating password strength with 5 conditions 
# - minimum 8 chars lenght, lower letter, upper cap, number and special chars
#
# @author Jay <jdtang@our.ecu.edu.au>
# @date 18/07/2021

# ask user to input password
echo "enter the password" 
      
# read input password assign it to 'password' variable
read password 
      
# get password length
len="${#password}" 
      
# if password length is greater or equal 8, then do this
if test $len -ge 8 ; then 
	
	# check if pw contain number
    	echo "$password" | grep -q [0-9] 
      
	if test $? -eq 0 ; then 
      
		# check if pw contain upper cap
		echo "$password" | grep -q [A-Z] 
      
	    	if test $? -eq 0 ; then 
      
    			# check if pw contain lower letter
			echo "$password" | grep -q [a-z] 
      
    			if test $? -eq 0 ; then 
      
    				# check if pw contain special chars
				echo "$password" | grep -q [$,@,#,%] 
      
    				if test $? -eq 0 ; then 
      
    					# print message
					echo "Strong password" 
      
        			else 
      
        				echo "weak password include special chars" 
      
        			fi 
      
    			else 
      
    				echo "weak password include lower case char" 
      
    			fi
      
    		else 
      
			echo "weak password include capital char" 
      
    		fi 
      
    	else 
      
    		echo "please include the numbers in password it is weak password" 
      
    	fi 
      
else 
      
	echo "password length should be greater than or equal 8 hence weak password" 
      
fi

exit 0
     
