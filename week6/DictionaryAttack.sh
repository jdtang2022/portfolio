#!/bin/bash
#
# Filename: DictionaryAttach.sh
# @version: 1.0
# Description: The script uses a list of words (called a dictionary or wordlist) and tries each one until password is correct.
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      14/08/2021
# @last modified date: 16/08/2021

#hidden password hash
passwordHash="8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"

# for each line in the file
for word in $(cat wordlist.txt); do
    # hash the word in wordlist
    wordlistHash=$(echo -n $word | sha256sum | awk '{print $1;}')

    echo "Trying $word: $wordlistHash"

    # if the hash is the same as the correct password's hash then we have cracked the password!
    if [ $wordlistHash = $passwordHash ]; then

        echo -e "Password has been cracked! it was \033[31m'$word'\033[0m!"

        exit 0
    
    fi

done

exit 1