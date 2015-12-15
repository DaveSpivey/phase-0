#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: NameData accepts a name, Greetings accepts an instance of NameData
# Output: Greetings prints a string
# Steps:
# => Make NameData variable accessible
# => Initialize Greetings and create a new instance of NameData as an instance variable
# => Define a method for the new variable to call and use name within output string

class NameData
  attr_reader :name

  def initialize(name)
    @name = name
  end
end


class Greetings
  def initialize
    @name = NameData.new("Dave")
  end

  def hello
    puts "Hello #{@name.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


# Reflection

# Release 1

# - What are these methods doing?

# => #initialize allows the new instance to gather information about unique instance.
# #print_info just states all the information for the user.
# #what_is_... methods are allowing that info to be accessed with method calls by the instance object.
# #change_my_... methods update the instance variables everywhere within that instance.

# -How are they modifying or returning the value of instance variables?

# => The #what_is... methods are returning the values of the instance variables upon a call by the object.
# The #change_my... methods are modifying upon being called with an argument.

# Release 2

# - What changed between the last release and this release?

# => The @age variable is set to be accessed through an attr declaration at the beginning of the class definition.

# - What was replaced?

# => The instance method #what_is_age is replaced by #age.

# - Is this code simpler than the last?

# => Totally, and more readable because anyone can see which variables can be accessed or written to right at the top. #age looks way better than #what_is_age also.

# Release 3

# - What changed between the last release and this release?

# => Now @age has read and write permissions from outside the definition of class.
#The object is free to update that variable with a method call.

# - What was replaced?

# => The explicit instance method #change_my_age is now an implicit #age method definition as per attr_writer, and works the same way.

# - Is this code simpler than the last?

# => Yes, for all the same reasons attr_reader improved it.


# Release 6

# => What is a reader method?

# => A attr declaration that allows a variable to be accessed by a method call by an instance.

# => What is a writer method?

# =>A attr declaration that allows the value of a variable to be changed by a method call by an instance.

# => What do the attr methods do for you?

# => They work like a permissions file - in one place at the top of the class definition you can see which variables are able to be read and written to by instances of the class.

# => Should you always use an accessor to cover your bases? Why or why not?

# => No, because there are occasions where you wouldn't want a variable to be able to be updated, or even accessed to be read.

# => What is confusing to you about these methods?

# => I had a rough time right at the end. I kept getting this:
# Hello #<NameData:0x007f9dc3832fa8>! How wonderful to see you today.
# So I googled and tried to apply various .to_s attachments etc.
# I had interpolated "Hello #{@name}!" because that was the name of the instance variable in the NameData class,
# but forgotten that even though an instance was being called, it was out of scope, so kept just giving me the object id for its own @name
# whoops - fixed it with "Hello #{@name.name}!"