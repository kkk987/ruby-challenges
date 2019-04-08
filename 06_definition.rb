# Definition
# 
# Extend the definition class to have three different methods:
# 1. add_word(word, definition), should store a word and definition
# 2. lookup(word), should return a definition
# 3. total_words, should return the total number of words
# 
# Example:
# definition = Definition.new
# definition.add_word('ruby', 'A red, precious stone')
# definition.total_words -> should return 1
# definition.lookup('ruby') -> should return 'A red, precious stone'
#
# Check your solution by running the tests:
# ruby tests/06_definition_test.rb
#Commence on 9/4/2019 by Mark Ying


class Definition
    #initialize a new array for word
    def initialize
        @word = Array.new        
    end
    #store the word and definition as a hash value in array
    def add_word(word, definition)
        @word << {Word: word, Definition: definition}
        # puts "This is @word: #{@word}"
    end
    #if macthing word is found, return the definition 
    def lookup(word)
        @word.each do |h|
            if h[:Word] == word.to_s
                return h[:Definition]
            end
        end
    end
    def total_words
        return @word.length
    end
end

# definition = Definition.new
# definition.add_word('ruby', 'A red, precious stone')
# puts "word length: #{definition.total_words}"
# puts "Definition: #{definition.lookup('ruby')}"
