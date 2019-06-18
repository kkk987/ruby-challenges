# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

def int_check(inputs, flag)
  inc = false
  dec = false
  i = 0
  if flag == 1
    while i < inputs.length - 1
      if inputs[i] + 1 == inputs[i + 1]
        inc = true
      elsif (inputs[i] == inputs[-2]) && (inputs[i+1] == 0)
        inc = true
      else
        # puts "inc false"
        return inc = false
      end
      i += 1
    end
    return true if inc
  elsif flag == -1
    while i < inputs.length - 1
      if inputs[i] - 1 == inputs[i + 1]
        dec = true
      else
        # puts "dec false"
        return dec = false
      end
      i += 1
    end
    return true if dec
  end
  # puts "last flase"
  return false
end

def interesting_number(number)
    # your code goes here
    inputs = number.to_s.split("").map(&:to_i)
    return false if inputs.length < 3
    flag = 0
    if inputs[0] + 1 == inputs[1]
      flag = 1
    elsif inputs[0] - 1 == inputs[1]
      flag = -1
    end
    # puts "1st false"
    return false if flag == 0
    return int_check(inputs, flag)
end


puts interesting_number(789)
puts interesting_number(321)
puts interesting_number(798)
puts interesting_number(6)
puts interesting_number(23)
puts interesting_number(3210)
puts interesting_number(7890)
