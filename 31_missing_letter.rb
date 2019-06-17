# Missing letter
# Difficulty: medium/hard

# Write a method that takes an array of consecutive (increasing) 
# letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly 
# one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# missing_letter(['a','b','c','d','f']) -> 'e'
# missing_letter(['O','Q','R','S']) -> 'P'

# Included test uses rspec

def missing_letter(word)
    # your code goes here
    i = 0
    while i < word.length
      if ((word[i].ord + 1) != word[i+1].ord) && (i != word.length-1)
        # puts "next char #{word[i+1]}"
        return (word[i].ord + 1).chr
      end
      i += 1
    end
end

# puts missing_letter(['a','b','c','d','f'])
# puts missing_letter(['O','Q','R','S'])