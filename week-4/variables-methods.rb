# Full name greeting

  puts "What is your first name?"
  first = gets.chomp
  puts "Middle name?"
  middle = gets.chomp
  puts "Last name?"
  last = gets.chomp
  puts "Oh hello, #{first} #{middle} #{last}!"


# Bigger, better favorite number

  puts "What is your favorite number?"
  num = gets.chomp
  new_num = num.to_i + 1
  new_num = new_num.to_s
  puts "#{num}? Oh cool I guess... but isn't #{new_num} so much better?"

# links! ---------

[define-method](https://github.com/DaveSpivey/phase-0/blob/master/week-4/define-method/my_solution.rb)

[address](https://github.com/DaveSpivey/phase-0/blob/master/week-4/address/my_solution.rb)

[math](https://github.com/DaveSpivey/phase-0/blob/master/week-4/math/my_solution.rb)

-------------------
# - How do you define a local variable?
#  In Ruby this is simple - declare the variable name by, um, typing it, then assign it a value with "=" then enter the value you'd like to assign to the variable. "variable = value"

# - How do you define a method?
#  "def method_name(arguments)" is the first line. "def" is universal and just means "define" - it initiates the method. Arguments are input that may vary each time the method is called. After the body of the method, it should return a value and must end with the keyword "end".

# - What is the difference between a local variable and a method?
# A variable is an object in which you can store a value to be recalled anywhere within the scope of its definition. A method is a routine that can execute a block of code when called.

# - How do you run a ruby program from the command line?
# Type "ruby file_name"

# - How do you run an RSpec file from the command line?
# Type "rspec file_name"

# - What was confusing about this material? What made sense?
# My first time encountering running RSpec files linked to other files was a little confusing, but makes sense now.