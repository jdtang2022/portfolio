#!/usr/bin/perl

# perl need ';' to close each statement
$value="blah";
$x=5;

$x=$x+5;

# print statement in perl doens't print new line
print "Hello there\n";
print "The value is $value\n";
print "the value of x is $x\n";

# pattern metching using regex
if ( $value =~ m/.*ah$/ ) {
    print "Value ends with the letter 'ah'\n";
}
else {
    print "Value does not end with the letter 'ah'\n";
}