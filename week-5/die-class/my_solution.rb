# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: # of sides
# Output: 2 methods, one returning # of sides and one rolling dice
# Steps:

# => Define a class called "Die" and allow it to accept a # of sides.
# => Check to make sure it has at least one side, if not throw error
# => Create a method "sides" that echoes the # of sides
# => Create a method "roll" that generates a random number from 1 to number-of-sides variable
# => Create an instance of the variable to test it out


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    unless @sides >= 1
      raise ArgumentError.new("Only positive numbers are allowed")
    end
  end

  def sides
    @sides
  end

  def roll
    1 + rand(@sides)
  end
end



# 3. Refactored Solution

# I ?.. have nothing further to add.





# 4. Reflection

# - What is an ArgumentError and why would you use one?

# => When you want Ruby to complain to the user that input was not going to work correctly - just stops the process and alerts the user why.

# - What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# => I guess the whole thing is a new Ruby process. Only challenge was the random number, I had to try several times before looking at the error message and seeing the "expected" array of possible results started on "1" while "got" started on 0.

# - What is a Ruby class?

# => A structure in which you can define common variables and methods for instances of the class to share.

# - Why would you use a Ruby class?

# => To organize an environment for its instances. Each instance is its own object, but common rules defined for its behavior allow it more versatility and predictability. You can tell each instance what it "knows" and what it can "do".

# - What is the difference between a local variable and an instance variable?

# => A local variable is defined to be used in a specific method. It only has meaning within the scope of its method. An instance variable is defined with the class, but can be accessed outside the initialization of the class by each instance.

# - Where can an instance variable be used?

# => Anywhere for an object that is an instance of the class it's defined in. Only the object may use the variable, it may not be evaluated unless called by the object/instance.