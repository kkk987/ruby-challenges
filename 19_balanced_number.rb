
# A balanced number is the number that the sum of all digits to the left of the middle digit(s) 
# and the sum of all digits to the right of the middle digit(s) are equal.

# If the number has an odd number of digits then there is only one middle digit, 
# e.g. 92645 has middle digit 6; otherwise, there are two middle digits , 
# e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a 
# number is balanced or not, e.g 413023 is a balanced number because the 
# left sum and right sum are both 5 ('30' are the middle digits).

# Number passed is always positive.

# Return a string "Balanced" or "Not Balanced"

# Examples


# balancedNum(7) 
# => "Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digit (0) 
# and the sum of all digits to the right of the middle digit (0) are equal, then it's balanced.
# Note: The middle digit is 7.


# balancedNum(295591) 
# => "Not Balanced"
# Explanation:

# Since, the sum of all digits to the left of the middle digits (11) 
# and the sum of all digits to the right of the middle digits (10) are equal, then it's not balanced.
# Note: The middle digit(s) are 55.

# balancedNum(959)
# => "Balanced"
#Explanation:
# Since, the sum of all digits to the left of the middle digits (9) 
# and the sum of all digits to the right of the middle digits (9) are equal, then it's balanced.
# Note: The middle digit is 5.

# balancedNum(27102983) 
# => "Not Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digits (10) 
# and the sum of all digits to the right of the middle digits (20) are equal, then it's not balanced.
# Note : The middle digit(s) are 02.

def cal_left(number, index)
    i = 0
    sum = 0
    while i < index
        # puts "Number in left #{number[i].to_i}"
        sum += number[i].to_i
        i += 1
    end
    return sum
end

def cal_right(number, index)
    sum = 0
    while index < number.length
        # puts "Number in right #{number[index].to_i}"
        sum += number[index].to_i
        index += 1
    end
    return sum
end

def compare_sum(left, right)
    if left == right
        return "Balanced"
    else
        return "Not balanced"
    end
end

def balanced_num(number)
    # Your code goes here
    # puts "number #{number}"
    length = number.to_s.length
    # puts "Length #{length}"
    m_index = length/2
    # puts "m_index #{m_index}"
    num_str = number.to_s
    if length % 2 == 1
        middle_digit = num_str[m_index].to_i
        left_sum = cal_left(num_str, m_index)
        right_sum = cal_right(num_str, m_index + 1)
        return compare_sum(left_sum, right_sum)
    else
        middle_digit = num_str[m_index - 1].to_i * 10 + num_str[m_index].to_i
        # puts "middile digits #{middle_digit}"
        left_sum = cal_left(num_str, m_index - 1)
        right_sum = cal_right(num_str, m_index + 1)
        return compare_sum(left_sum, right_sum)
    end
end

#Expect balanced
puts balanced_num(7)
#Expect not balanced
puts balanced_num(295591)
#Expect balanced
puts balanced_num(959)
#Expect not balanced
puts balanced_num(27102983)
