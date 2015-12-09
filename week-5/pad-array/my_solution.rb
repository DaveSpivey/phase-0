# Pad an Array

# I worked on this challenge [with: Sabri Helal]

# I spent [1.25] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# An array, and an integer or string
# What is the output? (i.e. What should the code return?)
# one returns new array, the other a transformed array
# What are the steps needed to solve the problem?
#


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    while array.length < min_size
      array << value
    end
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []

  array.each do |i|
    new_array << i
  end

  if new_array.length >= min_size
    return new_array
  else

    while new_array.length < min_size
      new_array << value
    end
  end
  new_array
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    while array.length < min_size
      array.push(value)
    end
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.map{|x| x}

  return new_array if new_array.length >= min_size

  while new_array.length < min_size
    new_array << value
  end

  new_array
end


# 4. Reflection
=begin

-Were you successful in breaking the problem down into small steps?

Yes, the pseudocoding got us a large part of the way there. Just the ordering of the loops etc had to be retweaked.

- Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Mostly. The broad outline was successful, but some of the built-in methods took a few tries.

- Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Initially all tests passed except having the undestructive array be unchanged. This was because our initial code had:
  return array if array.length >= min_size
which we thought would be ok, since we didn't actually manipulate the array. To fix it we just populated new_array with the contents of array in the first step and returned that instead.

- When you refactored, did you find any existing methods in Ruby to clean up your code?

We used .map to copy the contents of the original array and populate the new array in one step.

- How readable is your solution? Did you and your pair choose descriptive variable names?

I think the refactored set is pretty readable. Variables are descriptive.

- What is the difference between destructive and non-destructive methods in your own words?

Destructive methods change the contents of its arguments permanently. Non-destructive use new variables to manipulate data while leaving the integrity of the original arguments pristine.

=end