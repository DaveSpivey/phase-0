
# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# => assert is called, passing a block. The first statement in the definition yields to that block as a conditional,
# => which passes on the first call, so no error is raised. Second call raises an error because the conditional in the block returns false.


# 3. Copy your selected challenge here

# 6.7 Validate Credit Card

class CreditCard
  def initialize(number, fake_argument)
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

# card = CreditCard.new(4563960122001999)
# p card.check_card

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

card_1 = CreditCard.new(4563960122001999, "fake_argument")
assert { card_1.check_card }
# card_2 = CreditCard.new(1111111111111111)
# assert { card_2.check_card }

# it 'Expects a single argument for the card' do
#   expect(CreditCard.instance_method(:initialize).arity).to eq 1
# end

def assert_argument_count(this_class)
  raise "Expects a single argument for the card" unless this_class.instance_method(:initialize).arity == 1
end

assert_argument_count(CreditCard)

# 5. Reflection

# => What concepts did you review or learn in this challenge?

# I learned about assert statements, so I guess I'm one step closer to understanding how to write tests.

# => What is still confusing to you about Ruby?

# RSpec itself is still confusing to me, but I definitely feel like this challenge was a good intro to the concept
# of creating modular tests. Looking at specs now seems a little more familiar.

# => What are you going to study to get more prepared for Phase 1?

# I'd like to learn to write classes more efficiently, so I plan on starting to read Practical Object-Oriented Design in Ruby.