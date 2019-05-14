# Exes and Ohs
# Difficulty: medium/hard

# This is a great question for interview prep, so lets not google it. 
# Instead, try whiteboarding, and thinking of your approach before coding. There are multiple approaches to this question, so try to think of the most efficient one you can!

# Write a method that will take a string as an input. 
# The method will check this string, and count the amount 
# of 'x's and 'o's. It should return true if the amount of 'x's 
# and 'o's are the same, and should return false if they are different. 
# It should also be case insensitive, and work with any set of two 
# characters (for example, the string could contain "oooxxx" or
# "eeefff" - both of these would return true because there are
# two distinct characters and an equal number of each in both
# examples).

# Example input: "ooxx"
# Expected output: true

# Example input: "oOxXxoX"
# Expected output: false

# Example input: "ooXx"
# Expected output: true

# Example input: "rtrt"
# Expected output: true

# Example input: "RtrT"
# Expected output: true

# Example input: "efefy"
# Expected output: false

def exes_and_ohs(input)
    # Your code goes here
    letters = input.downcase.split('')
    
    result = letters.each_with_object(Hash.new (0)) {|letter, result| result[letter] += 1}
    keys = result.keys
    # puts keys
    flag = false
    # puts keys
    # puts "class: #{keys[0].class}"
    # puts result.keys[0].class
    # a = keys[0].to_sym
    # b = keys[1].to_sym
    # puts "a #{a} b #{b}"
    # puts result[a.to_sym]
    # puts result[b.to_sym]
    if result[keys[0]] != result[keys[1]]
        flag = true
    end
    # puts "char 1:#{result[keys[0]]}  char 2: #{result[keys[1]]}"
    # puts "flag:#{flag}"
    if (keys.length != 2) || flag
        return false
    else
        return true
    end
    
end

# puts exes_and_ohs("ooxx")
# puts exes_and_ohs("oOxXxoX")
# puts exes_and_ohs("efefy")