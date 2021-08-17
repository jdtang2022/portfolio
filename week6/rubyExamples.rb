#!/usr/bin/ruby

puts "hello"
puts("hi there")

value = "blah"

items = [1,2,3,4,5,6,8,9,10]

puts("the value is " + value)

# for item in items
#     puts(item)
# end

# items.each do | item |
#     puts(item)
# end

# loop in {} bracket in one line
items.each { | item | puts(item) }

# puts in ruby can print the array like using loop
# puts(items)