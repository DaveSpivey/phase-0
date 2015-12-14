# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: Number of sides when .sides is called, random element from input array when .roll is called
# Steps:
# => check if array is empty, raise error if it is
# => initialize Die class with argument
# => define sides method to return length of input array
# => define roll method to select an element from input array at random and return the string it contains

# Initial Solution

# class Die
#   def initialize(symbols)
#     @symbols = symbols
#     if @symbols.empty?
#       raise ArgumentError.new("Please enter arguments for die roll")
#     end
#   end

#   def sides
#     @symbols.length
#   end

#   def roll
#     result = @symbols[rand(@symbols.length)]
#   end
# end



# Refactored Solution

class Die
  def initialize(symbols)
#    attr_accessor :sides
    @symbols = symbols
#    @sides = @symbols.length
    if @symbols.empty?
      raise ArgumentError.new("Please enter arguments for die roll")
    end
  end

  def sides
    @symbols.length
  end

  def roll
    @symbols.sample
  end
end

# Reflection

# - What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# => They were almost identical, mostly the change was in the roll method, but the logic was the same.

# - What does this exercise teach you about making code that is easily changeable or modifiable?

# => I definitely appreciated that most of the work was already done for me by last week's challenge, so yea keeping things modular and broad is a good goal if you want to recycle.

# - What new methods did you learn when working on this challenge, if any?

# => I learned #sample which looks way better than what I had at first. Also this is the first time I've used #empty? although I've seen it before.

# - What concepts about classes were you able to solidify in this challenge?

# => I tried to remove the need for the #sides method by defining @sides in the initialize method and giving it an attr_reader. It didn't work so I commented it out and put #sides back in. I'm not happy about it, but at least I'll have my ears perked this week for what nuances in syntax or logic I was missing.