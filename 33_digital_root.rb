# Digital root

# The digital root (also repeated digital sum) of a 
# non-negative integer is the (single digit) value 
# obtained by an iterative process of summing digits, 
# on each iteration using the result from the previous 
# iteration to compute a digit sum. 
# The process continues until a single-digit number is reached.

# For example, the digital root of 65,536 is 7, 
# because 6 + 5 + 5 + 3 + 6 = 25 and 2 + 5 = 7.

# Your code should return the digital root of any positive
# number passed in. 
# You can assume the argument given is an integer.
# Return -1 if any negative argument is provided.

def digital_root(number)
    # Your code goes here
    if (number.is_a? Numeric) && (number >= 0)
      inputs = number.to_s.split("")
      return inputs.join("").to_i if inputs.length == 1
      sum = inputs.map(&:to_i).sum
      digital_root(sum)
    else
      return -1
    end
end

# puts digital_root(1000000000000000000000000000001)
# puts digital_root(890)
