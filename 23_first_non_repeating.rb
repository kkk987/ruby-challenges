# Find the first non-repeated character
# Difficulty: medium

# String methods are an incredibly powerful way to 
# validate and control user input.

# Write a method that will find the first non-repeated 
# character in a String. 
# Return false if only repeats are found. 

# *Try writing this by hand first*. 
# Confusing methods like this can become a lot more simple after 
# they are written by hand. 


#*E.g.* first-non-repeat("aaaabbbcccdeeefgh") should return 'd'

#*E.g.* first-non-repeat("wwwhhhggge") should return 'e'

#*E.g.* first-non-repeat("wwwhhhggg") should return false


## Optional
# If given a long string, this would take a fair chunk of computing power, 
# as it would have to go over every character. Can you return on the first 
# non-repeat, without checking every other letter?

class Array
    def difference(other)
      h = other.each_with_object(Hash.new(0)) { |e,h| h[e] += 1 }
      reject { |e| h[e] > 0 && h[e] -= 1 }
   end
end

def first_non_repeating(input)
    # Your code goes here
    words = input.chars
    # result = words.each_with_object(Hash.new (0)) {|letter, result| result[letter] += 1}
    if (words - (words.difference(words.uniq))).first == nil
        return false
    else
        return true
    end

end

# Test your code here
puts first_non_repeating("aaaabbbcccdeeefgh")
puts first_non_repeating("wwwhhhggge")
puts first_non_repeating("wwwhhhggg")