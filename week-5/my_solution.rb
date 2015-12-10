# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Catie Stallings]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# => An array
# What is the output? (i.e. What should the code return?)
# => An array with the most frequent elements
# What are the steps needed to solve the problem?

# => Create an empty hash
# => Iterate through array, making each element a hash key
# => Increment values per each index
# => Iterate through hash to compare values
# => Create and return an array with those values


# 1. Initial Solution

# def mode(array)
#   hash = Hash.new(0)
#   new_array = []

#   array.each do |i|
#     hash[i] += 1
#   end

#   hash = hash.sort_by { |key, value| value }.reverse.to_h

#   hash.each do |key, value|
#     if value == hash.values[0]
#       new_array << key
#     end
#   end
#   p new_array
# end


# 2[0]. Refactored Solution

# def mode(array)
#   new_array = []
#   count_array = []

#   array.each do |i|
#     count_array << array.count(i)
#   end

#   array.each do |i|
#     new_array << i if array.count(i) == count_array.max
#   end

#   p new_array.uniq
# end

# 2[1]. Further Refactoring
def mode(array)

  count_array = array.map {|i| array.count(i)}

  new_array = array.select {|i| i if array.count(i) == count_array.max}

  p new_array.uniq
end


# 3. Reflection

# - Which data structure did you and your pair decide to implement and why?

# => We initially decided to use a hash, because we could store the frequency values by a key that was the unique array index.

# - Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# => Yes, the pseudocode in this was the easiest part, because it just made logical sense - we flew through it.

# - What issues/successes did you run into when translating your pseudocode to code?

# => Everything. It was hard dealing with the hash because we were trying to sort by value. When we were finally successful, we tried to iterate through sequentially. This is the array's realm, and we were punished. We finally got it to work, technically. The first solution still has 1 failure on RSpec, but only because the output elements are in the wrong order. When we sorted the hash by value, we re-arranged the order given in the argument array, so RSpec didn't like it. Our eventual solution used arrays only, and seems way more elegant, but the whole thing exposed our diecomfort with hashes.

# - What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# => In the last solution we implemented .map and .select, because in the middle one we wastefully created 2 empty arrays and populated them with 2 separate .each calls on the same array. Much better. Also .count was crucial to the re-structuring in the refactor. .uniq pretty cool too at the end.