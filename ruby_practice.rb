#Notes from 19/03/13 Makers Academy Day 2

def put_something()
	puts "in method"
end

def print_name(some_name)
	#string interpolation
	puts "hello #{some_name}"
end


puts "hello"
put_something
puts "hi"
puts "arg"
put_something

# Implicit returns-don't need to say return

def vader
  "I am your father"
  "luke"
end

# puts vader RETURNS LAST LINE-so "luke" here

def vader(evil = true)
  # guard clause
  return "something else" if evil == "luke"

  if evil
    "I am your father and I hate you"
  else
    "I am your father and I love you"
  end
end

# Returns FALSE value as it's the last line parsed

# returns else
puts vader(false)

# returns if
puts "Luke, #{vader(true)}"

# returns guard
puts vader("luke")

# put variable-this is a local variable
zahid = "awesome"


#get variable
puts zahid

#either
print_name("string example")
#or
print_name(zahid)

#scope:
#any variables set INSIDE methods are local variables and are only valid in that method

def another
	#this is a local variable and not valid outside
	local
end

# Resereved ketywords

if
else
elsif
end
unless
case
when
then
def
class
module
rescue
begin
while
until
for


puts "party" if going_out

going_out = true

if going_out
	puts "Party"
else
	puts "boring"
end

# ternary operator
tonight = going_out ? "party" : "boring"


#case operators

weekday = "monday"

case weekday
when "sunday"
	puts "boring"
when "saturday"
	puts "party"
else
	"I'm gonna go see my kids"
end

# equivalent of if statement

if weekday == "monday"
	puts "boring"
elsif weekday == "saturday"
	puts "saturday"
else
	puts "fuckhead"
end

#types- everything is an object:

puts "string".inspect
puts 123.inspect
puts 1.334.inspect
puts false.class
puts true.inspect
puts nil.class

# what is the difference between false and nil
# nil is undefined, false is false

def empty_method
  #this will just return nil
end

def false_method
  # this will return false
  false
end

if false
  puts "this will never print"
end

if nil
  puts "this will never print"
end

if "will return true"
  puts true
end

if #
  puts "this will return true"
end

true_value = true
true_value = "string"

# everything will pass an if condition except for false and nil

if true_value == "true"
  print "this won't print"
end

nil_value = nil

if nil_value.nil?
  puts "this is nil"
end

# and and or

&&
||

def something_true
  true
end

def something_false
  false
end

# and or should always be like this-this function runs
if something_true && something_false
  puts "won't print"
end

# will print
if something_false || something_true
  put "will print"
end

# symbols

string = "London"
symbol = :london

# we can do lots with strings/change them
# we can't fiddle around wwith symbols-they're immutable/unchangeable

string = "Lemonade"
another_string  = "Lemonade"
# these are 2 separate objects

# symbols are immutable-the two below are the SAME. symbols are used as a placeholder
symbol = :london
another_symbol = :london

{:london => "rainy", "London" => "still rainy"}

# mainly use symbols to pass information around just inside ruby
#strings are for user inputs/stuff you want to manupulate

# Hashes and arrays

[] Array [1,2,3,4,5]
{} Hash with =>

hash[:london]
# bad if we cange the string-has gets messed up
hash["London"]

array = [1,2,3,4,5]
# adds to an array
array << 10
puts array.inspect

# second item
puts array[1]

#range
puts array[0..2]

# concatenation
arr = [1,2]
arr = arr + [3.4]
# is same as
arr += [5,6]
puts arr.inspect

# other shit

string += "very rainy"
puts string

# loops

# for loops don't do this way :(

for val in arr
  puts val
end

# use this

arr.each do |v|
  puts v
end

# OR
arr.each { |v| puts v}

# other loops

a = 1



while a < 5
  print "murder"
  a += 1
end

until num == 5
  print "murder"
  a += 1
end

num = -0

while true
  puts "looping"
  num +=1
  break if num > 5
end

# coding convetions
#
# spaves rather than tabs
#
# two spaces-but use tab key
# variable and method names should be snake_cased and lowercase
# classes should be camelCase
# leave off parentheses if you don;'t call arg i.e. vader not vader()
# this is bad:
vader (false)

#generally use parentheses when passing arguments to methods
vader false
vader(false)

puts("hello world")
puts "hello world"

# don't do this
def method no_parentheses

end

# do this
def methods(parentheses)

end

# methods that return true or false end in ?
1.odd?

# methods that change the object you're calling end in a bang !
string = "london"

# this just returns a capitalised string
capital_sttring = string.capitalize

puts string

# whereas this modifies the string we call the method on
string.capitalize!

puts string
puts capital_string

def pope_a_catholic?
  true
end

put pope_a_catholic?

def change_something!
  # change our object
end

# this bullshit is possible
def +

end

# because 1 + 2 is just 2 calling the PLUS METHOD on ONE

# try making an array with 10 elements and only printing the odd elements
# see how many ways you can do this

array = [1,2,3,4,5,6,7,8,9,10]

array.each {|x| puts x if a.odds}

# OR

arrayodd = []
array.each { |x| puts x if a.odd?}
puts arrayodd.inspect

# OR

array.each { |a| puts a if a%2 != 0 }

puts (1..10).select { |a| a%2 != 0 }.inspect
# method chaining, bitch

# Ranges

(1..10)
# a range

(1..10).class
# a range object

(1..10).to_a
# turns range into array

# you can loop through a range
(1..10).each { |a| puts a}

#  you can covert it into an array

first_ten = (1..10).to_a

puts first_ten.inspect

puts "selecting odd numbers"

odd_numbers = first_ten.select { |a| a.odd? }
puts odd_numbers.inspect

# Modify the array directly (using a ! bang)
first_ten.select! { |a| a.odd? }
puts first_ten.inspect

# One line
puts (1..10).select { |a| a.odd? }.inspect


# Blocks..

def method_with_block
  puts "before block"

  puts "after block"
end


#Long version

#start with an array of numeric strings
#for each string do the following:
  #change the string into an integer
  #perform an unknown command that integer
  #put the integer into an array
#finish with an array of integers

def map_strings_to_integers(strings)
  integers = []
  strings.each do|string|
    integer = string.to_i
    integer2 = yield integer
    integers << integer2
  end
  integers
end

string1 = ["2","0","34"]
puts map_strings_to_integers(string1) {|x| x * 15}.inspect

#short version

def map_strings_to_integers(strings)

  strings.map { |string| yield string.to_i}

end

strings1 = ["2","0","34"]
strings2 = ["4","2","213"]
puts map_strings_to_integers(strings1) {|x| x * 15}.inspect