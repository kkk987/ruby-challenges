# Unique

# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.

# Difficulty:
# 5/10

# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]

# Hints:
# A hash could be helpful in your solution.

# Check your solution by running the tests:
# ruby tests/10_unique_test.rb

def unique(mylist)
  # Your code here
  all_keys = []
  result = mylist.each_with_object(Hash.new (0)) {|item, hash| hash[item] += 1}
  result.keys.each do |key|
    all_keys << key
  end
  return all_keys
end