# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

def vowels (string)
  # Your code here
  text = []
  re = Regexp.union("a", "A", "e", "E", "i", "I", "o", "O", "u", "U")
  letters = string.split('') #.map(&:downcase)
  letters.each do |letter|
    text << letter.match(re).to_s
  end
  return text.reject(&:empty?)
end

# message1 = "The quick brown fox"
# puts vowels(message1)
