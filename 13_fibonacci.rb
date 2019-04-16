# nthFibonacci

# A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each
# subsequent number is the sum of the previous two.

# For example, the first seven Fibonacci numbers are: 0 1 1 2 3 5 8

# Write a method that will return the nth number of the sequence.

# The syntax is easy, getting your head around the algorithm is the challenge.
# Write the sequence on a piece of paper first and think about the steps
# you take for each number. Translate this to pseudocode and then to ruby.

# Difficulty:
# 6/10

# Example:
# nthFibonacci(0) -> 0
# nthFibonacci(3) -> 2
# nthFibonacci(6) -> 8

# Check your solution by running the tests:
# ruby tests/13_fibonacci_test.rb

# Approximate value of golden ratio 
PHI = 1.6180339

# The first seven Fibonacci numbers


def nthFibonacci (n)
  # Your code here
  f = [0, 1, 1, 2, 3, 5, 8]
  if n < 7
    return f[n]
  end

  t = 6
  fn = 8

  while t < n
    fn = (fn * PHI).round(0)
    t += 1
  end

  return fn
end

# puts "1th Fibo #{nthFibonacci(1)}"
# puts "3th Fibo #{nthFibonacci(3)}"
# puts "11th Fibo #{nthFibonacci(11)}"