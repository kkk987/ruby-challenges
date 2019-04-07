# Sum Numbers

# Write a method that will take an array of numbers,
# and return their sum.

# Example:
# sum_numbers([1,1,1]) should return 3
# sum_numbers([5,2,100,0,10]) should return 117

# Check your solution by running the tests:
# ruby tests/04_sum_numbers_test.rb

def sum_numbers(numbers)
  # Your code here
  #initalize the sum
  sum = 0
  #iterate through every element of a given array
  numbers.each do |number|
    #add the previous sum and next number in the array
    sum += number
  end
  
  return sum
end


# [1,1,1]
# [5,2,100,0,10]
# [55,23,183,0,29]
result = sum_numbers([1,1,1])
puts "Results for 1,1,1 #{result}"

result = sum_numbers([5,2,100,0,10])
puts "Results for 1,1,1 #{result}"

result = sum_numbers([55,23,183,0,29])
puts "Results for 1,1,1 #{result}"


# OPTIONAL:
# Go to the tests folder and open 04_sum_numbers_test.rb.
# Read over the tests and see if you can understand them.

# Try add at least three more tests, and test at least 2 corner cases.

# Hint:
# You could test what happens when you call sum_numbers([])?
