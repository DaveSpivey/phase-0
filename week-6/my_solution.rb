# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: New instance accepts an integer argument, #guess method accepts separate integer argument
# Output: #guess returns :high, :low or :correct, #solved? returns a boolean
# Steps:
# => Create #initialize method accepting an integer argument
# => define instance variable from argument
# => define #guess method which accepts user input integer as argument
# => compare #guess argument with @answer variable
# => return :low if guess is lower than answer, :high if higher and :correct if same.
# => define #solved? method which is false by default and will return true once #guess has returned :correct


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#     unless answer.is_a? Integer
#       raise ArgumentError.new("I'm thinking numbers, cheeky monkey.")
#     end
#   end

#   def guess(guess)
#     if guess < @answer
#       @solved = false
#       :low
#     elsif guess > @answer
#       @solved = false
#       :high
#     else
#       @solved = true
#       :correct
#     end
#   end

#   def solved?
#     if @solved
#       true
#     else
#       false
#     end
#   end
# end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    unless answer.is_a? Integer
      raise ArgumentError.new("I'm thinking numbers, cheeky monkey.")
    end
  end

  def guess(guess)
    if guess < @answer
      @solved = false
      :low
    elsif guess > @answer
      @solved = false
      :high
    else
      @solved = true
      :correct
    end
  end

  def solved?
    @solved ? true : false
  end
end


# Reflection

# - How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# => When an instance of a class is initialized, parameters within the initialization method allow each instance to have unique states, which may affect how they interact with the program.
# Variables allow each instance to "know" something about itself and methods allow them to "do" things with their environment.

# - When should you use instance variables? What do they do for you?

# => Any time you want to keep track of a unique property or circumstance for an instance of an object.
# I have a habit of elaborating on one question only to get to the next one and just want to refer back to my last answer.

# - Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# => I did have to tweak the #guess method a few times when I tried to refactor.
# I wanted to state the return conditionals on one line each, but then would have to update @solved after returning, which is not allowed because the conditional already returned a value, exiting the method.

# - Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# => Not sure why, other than to get us used to them? I dunno, the book says they are more time- and processing-efficient for searching, but that wouldn't make a difference to the program.
#The fact that they're unique is sort of a plus, since RSpec has to verify that the output is correct, but again, it could just evaluate a string.
#And since this is hypothetically a game for a user, the symbol notation is sort of weird output to get.