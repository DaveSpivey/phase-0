# Numbers to Commas Solo Challenge

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# one argument - a positive integer
# What is the output? (i.e. What should the code return?)
# a comma-separated integer as a string
# What are the steps needed to solve the problem?
#
# - If integer is 3 digits or less, convert to string and return
# - If not:
# - Create new variable = empty string
# - Convert integer from input into string
# - Reverse the order of characters in the number string
# - Iterate through number string, pushing groups of 3 digits to new string variable
# - Concatenate a comma in between each group of 3 digits
# - Re-reverse string and return it


# 1. Initial Solution


def separate_comma(num)
  return num.to_s if num.to_s.length <= 3

  new_num = ""
  num = num.to_s.reverse

  i = 0
  while num.length - i > 3
    3.times do
      new_num << num[i]
      i += 1
    end
    new_num << ","
  end

  while i < num.length
    new_num << num[i]
    i += 1
  end

  new_num.reverse
end


# 2. Refactored Solution

def separate_comma(num)
  num = num.to_s
  return num if num.length <= 3

  comma_index = -4
  while comma_index > (-num.length - 1)
    num.insert(comma_index, ",")
    comma_index -= 4
  end

  num
end


# 3. Reflection

=begin

- What was your process for breaking the problem down? What different approaches did you consider?

I imagined how to iterate through the indexes if the number were different lengths and realized that I needed to be able to organize the groupings from the end of the string backward. I saw .reverse would get me there - then I needed a way to keep track of how many digits were left once I started concatenating digits with commas. An indexing while loop, while maybe not very Ruby-like, still is an explicit statement of iteration that tracks with 'i' where the process is in the loop. After the initial loop breaks, you may not want another full loop of 3 digits, but you still need to finish the string in some cases, so I constructed a clean-up loop.

- Was your pseudocode effective in helping you build a successful initial solution?

Yes. I was pretty much finished mentally constructing the method after pseudocoding.

- What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I almost used .byteslice, but then I saw .insert and in the ruby docs there were examples of iterating backward through a string. Ch-ching! It changed the approach a little, but essentially still iterating backward in groups of three and inserting a comma.
*Big weird thing still left unsolved though!
this is my refactored loop:
  comma_index = -4
    while comma_index > (-num.length - 1)
      num.insert(comma_index, ",")
      comma_index -= 4
    end

I initially had the last line increment comma_index by -3, not -4.
This was returning things like "10,00,000" or "1,00,000".
I played with re-ordering where it increments or having different starting values with no luck. Once I changed the increment to by 4 instead of 3 it worked with every test case. There must be something I fundamentally don't understand about how negative indexing works, because I suspected maybe one of the increments was somehow a placeholder or something, so I inserted a print statement at the end of my loop:
  p comma_index
and got this:
-8
-12
-16
-20
-24
-28
-32
"1,000,000,000,000,000,000,000"

This shows the index was indeed moved by 4 each time through the loop, but the comma was inserted after 3 indexes every time. So confused.

- How did you initially iterate through the data structure?

Using a while loop with a variable i representing the index number.

- Do you feel your refactored solution is more readable than your initial solution? Why?

Yes, it's more concise, the variables are better named, and with reversing and re-reversing it's more clear what's going on.