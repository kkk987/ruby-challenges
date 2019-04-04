# Write a program that accepts someone's name and age, and responds
# as shown here:

# Program is run and outputs:
# "What is your name?"

# User inputs: "Tom"

require "io/console"
# Program outputs:
# "Hi Tom! How old are you?"

# User inputs: 40

# Program outputs:
# "Wow! You are 40 years old. Congratulations!"

# Beast mode challenge:
# Ater the above, the program calculates how many years until
# the user is 100 years old and tells the user. For example, for
# our user input above (Tom and 40), after outputing 
# "Wow! You are 40 years old. Congratulations!"
# The program also outputs:
# "Tom, in 60 years you will be 100 years old!"




puts "What is your name?"

_Name = gets.chomp


puts "Hi #{_Name}! How old are you?"

_Age = gets.chomp

puts "Wow! You are #{_Age} years old. Congratulations!"

_Time = 100 - _Age.to_i

puts "#{_Name}, in #{_Time} years you will be 100 years old!"

puts "Press any keys to continue.."

STDIN.getch


