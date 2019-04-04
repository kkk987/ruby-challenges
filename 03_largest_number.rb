# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
# 
# If your stuck try working togeather
# 
# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
# 
# Examples - what if both numbers are equal or are strings?

def number? (number)
  
  if number.to_i == 0
    if number == "0"
    # puts "number 0"
      return number.to_i
    else
      
      return false
    end
  else
    # puts "number #{number}"
    return number.to_i
  end
  
end

def largest_number (number_1, number_2)
 
  # Your code here
  # number?(number_1) ? (puts "Valid number 1"): (puts "Invalid number_1")
  # number?(number_2) ? (puts "Valid number 2"): (puts "Invalid number_2")
 
 
    number_1_i = number_1.to_i
    number_2_i = number_2.to_i
    if number_1_i > number_2_i
      #puts "This is bigger number_1 #{number_1}"
      return number_1_i
    elsif number_1_i < number_2_i
      #puts "This is bigger number_2 #{number_2}"
      return number_2_i
    else
      puts "They are equal"
    end
 
  
end


  loop do
    puts "Enter a number"
    number_1 = gets.chomp
    puts "Enter another number"
    number_2 = gets.chomp 
    if number?(number_1) && number?(number_2)
      _Answer = largest_number(number_1, number_2)
      puts "The answer is #{_Answer}"
    else
      puts "Invalid number"
    end

end

#_Answer = largest_number("abc",50000)

