# hello
puts "hello raiden" # puts method prints a str and adds a newline


# variables
# explicit type declaration is not required
# contains all the common variables line string, int, float, boolean
name = "raiden"
age = 150
height = 10.5
if_god = true


# control structure
horsepower = 1500
if horsepower >= 1000
  puts "Power"
else
  puts "Baby"
end


# loops
# While loop
i = 0
while i < 5
  puts i
  i += 1
end
# For loop with ranges
(11..15).each do |num|
  puts num
end


# some features
# symbols are immutable and memory efficient
name = :ruby  # Symbol
greeting = "Hello"  # String


# Using a block with an array
[1, 2, 3].each do |num|
  puts num * 2
end