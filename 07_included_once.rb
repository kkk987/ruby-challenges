# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/07_included_once_test.rb
#

def included_once (haystack, needle)
  # Your code here
  #set index starting from zero
  count = 0
  #search every elemnt in haystack
  haystack.each do |h|
    #stop the loop when the occurence is more than once
    if count > 1
      return false
    end
    #increase the count by 1 when the word occurs
    if h == needle
      count += 1
    end
  end
  #check the occurence
  if count == 1
    return true
  else
    #word doesn't occur in the array
    return false
  end
end
