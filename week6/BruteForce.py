#!/usr/bin/python3
#
# Filename: BruteForce.py
# @version: 1.0
# Description: The script written in Python3. It attempts a brute force attack for the given hash password.
#              A brute force attack attempts every possible combination of numbers and letters until correct password is matched.
#               *'MIN_LENGTH' variable set the minimum password length to start the brute force attack.
#                       eg. MIN_LENGTH = 2 --> start from 2 characters
#               *'MAX_LENGTH' variable set the maximum password length the brute froce attack can go up to.
#                       eg. MAX_LENGTH = 5 --> stop before 5 characters
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      16/08/2021
# @last modified date: 17/08/2021

# import library
import hashlib
import itertools

# hidden password hash
passwordHash = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"

# possible numbers and letters for password
LETTERS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

# set minimum and maximum password length - start from 3 to 4 characters
MIN_LENGTH = 3
MAX_LENGTH = 5

# function can be used to hash sequence of characters
def sha256Hash(char_sequence):

    wordString = ''.join(char_sequence)

    wordHash = hashlib.sha256(wordString.encode('utf-8'))

    return wordHash.hexdigest()


# repeat for each 'n' (current password length)
for n in range(MIN_LENGTH, MAX_LENGTH):

    # start brute force attack
    for word in itertools.product(LETTERS, repeat=n):

        # hash the word
        #generatedHash = hashlib.sha256(''.join(word).encode('utf-8')).hexdigest()
        generatedHash = sha256Hash(word)

        # print current trying password and its hash
        print(f"Trying password {''.join(word)}:{generatedHash}")

        #if the hash is the same as the correct password's hash then we have cracked the password!
        if generatedHash in passwordHash:
            
            print(f"Password has been cracked! it was '{''.join(word)}'")
            
            break