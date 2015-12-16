# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Lucas Nagle].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: A set of digits
# Output: A boolean
# Steps:
# => Define check card Class
# => Initialize accepting card # with 16 digits
# => Check if correct input, else raise argument error
# => Define check card method
# => Modify input to be a reversed array of integers
# => Iterate over every other index, doubling integer
# => Find double digit numbers and split them
# => Add all resulting numbers
# => Check if divisible by ten
# => Return true if it is

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(number)
#     @number = number.to_s
#     if @number.length != 16
#       raise ArgumentError.new("Card number must be 16 digits")
#     end
#   end

#   def check_card
#     digitize
#     number_modify
#     digitize
#     sum = @number.inject {|sum, e| sum + e}
#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end

#   def digitize
#     @number = @number.to_s.split("")
#     @number.map! { |e| e.to_i }

#   end

#   def number_modify
#     p @number
#     @number.reverse!
#     @number.map!.with_index do |e, i|
#       if (i % 2 == 1)
#         e *= 2
#       else
#         e
#       end
#     end
#   end

# end

# card = CreditCard.new(4563960122001999)
# p card.check_card

# Refactored Solution

class CreditCard
  def initialize(number)
    @number = number.to_s
    if @number.length != 16
      raise ArgumentError.new("Card number must be 16 digits")
    end
  end

  def check_card
    digitize
    number_modify
    digitize
    sum = @number.inject {|sum, e| sum + e}
    sum % 10 == 0 ? true : false
  end

  def digitize
    @number = @number.to_s.split("").map! { |e| e.to_i }
  end

  def number_modify
    @number.reverse!.map!.with_index do |e, i|
      (i % 2 == 1) ? e *= 2 : e
    end
  end
end


# Reflection

# What was the most difficult part of this challenge for you and your pair?

# => Tossing around all the different data types and figuring out where it made the most sense to convert them took some concentration.
# => The worst part was that we took the example from the Canvas instructions and pasted it in for driver code
# => The example card # was separated by spaces, so we kept getting errors.
# => We tried everything for half an hour, including the splat operator for arguments in case it was reading the number groups as different arguments.
# => Finally had the sense to look at the spec file and saw that was not part of the challenge.

# What new methods did you find to help you when you refactored?

# => We'd used all these methods before, though we did achieve some tight methods by chaining lots of stuff together.

# What concepts or learnings were you able to solidify in this challenge?

# => Feel better about writing several methods within a class that are meant to be used in combination.
# => This code makes sense and is modular - and the #check_card method looks a lot like pseudocode because it's calling a series of descriptive methods.