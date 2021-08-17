#!/usr/bin/ruby
#
# Filename: DictionaryAttack.rb
# @version: 1.0
# Description: The script written in Ruby. It uses a list of words (called a dictionary or wordlist) 
# and tries each one until password is correct.
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      16/08/2021
# @last modified date: 16/08/2021

#import library
require 'digest'

#read the password hash
passwordHash = "5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5"

#open the wordlist and repeat for each word
IO.foreach("wordlist.txt") do | word |

    #remove new lines and white space from the end of each word
    word.chomp!

    #hash the word
    wordlistHash = Digest::SHA256.hexdigest(word)

    puts("Trying password #{word}: #{wordlistHash}")

    #if the hash is the same as the correct password's hash then we have cracked the password!
    if(wordlistHash == passwordHash)

        puts("Password has been cracked! It was '#{word}'")

        return

    end

end