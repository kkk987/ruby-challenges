# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb



# Your code here
puts "First input:"
first_input = gets.chomp.split(" ")
puts "Second input:"
second_input = gets.chomp.split(" ")
# puts first_input
# puts second_input
result = []
result = first_input.map {|h| (first_input.map(&:downcase)-(first_input.map(&:downcase)-second_input.map(&:downcase))).include?(h.downcase) ? "HIDDEN" : h}
puts result.join(" ")








# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.