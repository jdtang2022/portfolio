#!/bin/bash
#
# Filename: regexes.sh
# @version: 1.0
# Description: using grep -r statement to search for the follwing patterns with regular expression:
#   1. all 'sed' statements
#   2. all lines start with letter 'm'
#   3. all lines contain three digit numbers
#   4. all echo statements with at least three words
#   5. all lines that would make good password
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      09/08/2021
# @last modified date: 10/08/2021

# all 'sed' statements
echo -e "\033[31mAll 'sed' statements: \033[0m"
grep -r '\ssed\s' ../

# all lines start with 'm'
echo -e "\033[31mAll lines starts with 'm': \033[0m"
grep -r '^m' ../

# all lines contain three digit numbers
echo -e "\033[31mAll lines contian three digit numbers: \033[0m"
grep -r -P '\b\d{3}\b' ../

# all echo statements with at least three words
echo -e '\033[31mEcho Statements with at least three words:\033[0m'
grep -r -P 'echo .*"(\w+\s){2}\w+.*"' ../

# all lines that would make a good password 
# *At least 8 characters, one or more lower/UPPER/Number
# and one of these special char [!@#$]
echo -e '\033[32mLines with words make good password: \033[0m'
grep -Pr '^(?=.{8,}$)(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$])(?!.*[\s])' ../

