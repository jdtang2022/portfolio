#!/usr/bin/python3
#
# Filename: DictionaryAttack.py
# @version: 1.0
# Description: The script written in Python3. It uses a list of words (called a dictionary or wordlist) 
# and tries each one until password is correct.
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      16/08/2021
# @last modified date: 16/08/2021

#import 'hash' library
import hashlib

#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

#open the wordlist
with open("wordlist.txt", "r") as wordlist:
    
    #repeat for each word
    for word in wordlist.readlines():

        #remove new line and white space from the end of each word
        word = word.rstrip()

        #hash the word
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()

        print(f"Trying password {word}:{wordlistHash}")

        #if the hash is the same as the correct password's hash then we have cracked the password!
        if(wordlistHash == passwordHash):

            print(f"Password has been cracked! it was '{word}'")

            break