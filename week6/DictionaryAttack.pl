#!/usr/bin/perl
#
# Filename: DictionaryAttack.pl
# @version: 1.0
# Description: The script written in Perl. It uses a list of words (called a dictionary or wordlist) 
# and tries each one until password is correct.
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      16/08/2021
# @last modified date: 16/08/2021

#import library
use  Digest::SHA qw(sha256_hex);

#read the password hash
$passwordHash = "04e77bf8f95cb3e1a36a59d1e93857c411930db646b46c218a0352e432023cf2";

#open the wordlist
open(WORDLIST,"<wordlist.txt") or die "Couldn't open wordlist, $!";

#repeat for each word
while(<WORDLIST>) {

    chomp;

    #refer to each field within the text stream or 'wordlist'
    $word = $_;

    #hash the word
    $wordlistHash = sha256_hex($word);

    print "Trying password $word: $wordlistHash\n";

    #if the hash is the same as the correct password's hash then we have cracked the password!
    if($wordlistHash eq $passwordHash) {

        print("Password has been cracked! It was '$word'\n");

        exit;

    }

}