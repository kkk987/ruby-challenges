# Isogram
# Difficulty: medium

# An isogram is a word that has no repeatting letters; 
# consecutive or non-consecutive.

# Implement a method that determines whether a string 
# that contains only letters is an isogram. 
# The function will take the string as input, and will 
# return either true or false.


# *E.g.* isogram?("hello") should return false

# *E.g.* isogram?("scary") should return true

def isogram?(input)
    # Your code goes here
    input = input.chars
    # puts "input #{input}"
    result = input.each_with_object(Hash.new (0)) {|letter, result| result[letter] += 1}
    result.keys.each do |key|
        if result[key] != 1
            return false
        end
    end
    input.each do |item|
        if (item =~ /[[:alpha:]]/) == nil
            return false
        end
    end
    return true
end

# Test your code here
puts isogram?("hello") #should return false
puts isogram?("scary") #should return true
