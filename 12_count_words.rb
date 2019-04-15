# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words


# Your code here
#string = "hi hi Hi hello 1 1"
def count_words(string)
    texts = string.split(" ").map(&:downcase)
    result = texts.each_with_object(Hash.new (0)) {|item, hash| hash[item] += 1}
    result.each do |key, value|
    puts "#{key} #{value}"
end
end







#result = texts.each_with_object(Hash.new (0)) {|letter, result| result[letter] += 1}

# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2