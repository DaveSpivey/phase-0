
# Your Names
# 1)Jovanka Nikolovski
# 2)Dave Spivey

# We spent [1.25] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  # define a method serving_size_calc that takes two arguments
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # create a hash called library that stores food and portion

  # variable set to a value <-- removed

  # iterate through hash comparing value to the value asociated with the input, if it doesn't equal than the error_counter subtract 1 <-- removed

  #   if food not in hash, raise error
  if !library.has_key? item_to_make
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # set variable eq to first element in array of values associated with key
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  if remaining_ingredients == 0
  # determine remaining ingredients using input argument % variable for serv size
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
    # return string with ingredient instructions if remaining_ingredients is 0
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
  # if not 0, return instructions about leftovers and suggest TODO list
end
# Driver code
p serving_size_calc("pie", 7)
 p serving_size_calc("pie", 8)
 p serving_size_calc("cake", 5)
 p serving_size_calc("cake", 7)
 p serving_size_calc("cookie", 1)
 p serving_size_calc("cookie", 10)
 # p serving_size_calc("THIS IS AN ERROR", 5)

 # Reflect

# What did you learn about making code readable by working on this challenge?

# => It's valuable to spend some time to understand the intention of the code. I was afraid to change things because I didn't want to fundamentally alter the functionality.
# => Also it's the responsibility of the coder to make clearly defined variables and processes.

# Did you learn any new methods? What did you learn about them?

# => Learned the hard way that .each when called on a hash, if only given one argument, returns arrays of key: value pairs.

# What did you learn about accessing data in hashes?

# => You have to be careful to know what exactly you are accessing and what any methods you call will be returning. Bison (guide) suggested in the future that we use "p" to print and see what is being returned before advancing too far with questionable methods.

# What concepts were solidified when working through this challenge?

# I learned to take a hard look at what an ArgumentError actually says. It stated pretty explicitly something that was contradicting with the code, and it would've saved us some time to have heeded its advice from the beginning.