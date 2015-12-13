# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  new_array = []
  new_array << source.select { |i| i.is_a? Integer }
  new_array << source.select { |i| i.is_a? String }
  new_array
end

def my_hash_splitting_method(source, age)
  new_array = []

  new_array << source.select { |k, v| v <= age }.to_a
  new_array << source.select { |k, v| v > age }.to_a

  new_array
end

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

# The first method I used was .select. I originally looked at .map and .collect, since I saw those would iterate and return an array.
#The problem with those is it populates the new array with the result of the code block, so it would've returned booleans in this case (True/False).
#The .select method iterates and returns the value of the current index if the code block evaluates to True.


# The next method I used was .is_a? -which evaluates True if the object is of specified type.
#`is_a? Integer` and `is_a? String` in this case have to be capitalized to be recognized as the object type.

# In the hash method I once again used .select, as it applies to hashes also. The difference is for hashes you plug in two arguments, one for key and one for value.

# Last, I needed it to return in a format with arrays nested in arrays nested in one big array.
#With just .select it only returned a big array with 2 hashes inside.
#I tried .flatten, which for hashes lists all the values sequentially in a new array, but it still wasn't quite right - each former key:value pair was now separated by a comma but wasn't in its own array.
#Finally after paging through ruby doc searching for the word "array" I found to_a, which stands for 'to array', which I stuck at the end of the .select block instead of .flatten so that each key:value pair .selected were pushed to the new array in array form.
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# Ruby docs are pretty sweet. I'm used to doing challenges that force you to tackle problems creatively without built in methods, but this makes me want to collect a full tool belt and show Ruby who's boss.
#I definitely feel like I'll have a better handle on the methods I researched than the ones I learn from my group, only because struggling and failing with other methods cemented my understanding of the limitations and abilities of each method.
#
#