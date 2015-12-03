# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Marshall Sosland].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
# 1. Create variable set to zero
# 2. Iterate through array and add each number to sum
# 3. Return sum

# Input: an array of numbers
# Output: the sum of numbers within array
# Steps to solve the problem.


# 1. total initial solution
def total(numbers)
  sum = 0
  numbers.each { |num| sum += num }
  sum
end


# 3. total refactored solution
def total(numbers)
  return numbers.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: One string combining input strings
# Steps to solve the problem.
# 1. Create variable containing empty string
# 2. Iterate through array, concatentating each string in array plus a space to new string.
# 3. Capitalize first character
# 4. Add period character to end of string
# 5. Return string

# 5. sentence_maker initial solution
def sentence_maker(words)
  sentence = ""
  words.each { |word| sentence << word.to_s + " "}
  sentence = sentence.chomp(" ") << "."
  return sentence.capitalize
end




# 6. sentence_maker refactored solution

def sentence_maker(words)
  sentence = ""
  words.each { |word| sentence << word.to_s + " "}
  return sentence.capitalize.chomp(" ") << "."
end