# Max Min In String

# There are plenty of incredible array methods built into 
# ruby that allow us to compare and run calculations on 
# arrays full of numbers. Sometimes, we don't receive these 
# numbers in an array, and instead receive it as a string of 
# space seperated numbers.

# Write a method that will take a string of space seperated 
# numbers as input, and return the highest and lowest number 
# from this string.

# *E.g.* max_min_in_string("5 2 9 8 23 1") should return "23 1"
# *E.g.* max_min_in_string("15 4 4 38 -9") should return "38 -9"

# Write your own test file for this challenge using Test::Unit


def max_min(num_string)
    # your code goes here
    input = num_string.split(" ").map(&:to_i).sort
    result = [input[-1], input[0]].join(" ")
    return result
end


puts max_min("5 2 9 8 23 1")
puts max_min("15 4 4 38 -9")
puts max_min("999 1000 999 1000 6 6 6 8 0 1 2 6 9")