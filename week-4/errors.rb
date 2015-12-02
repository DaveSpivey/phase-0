# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected input, expecting keyword_end
# 5. Where is the error in the code?
# => The error is that this is an infinite loop - the compiler looks for a break, but doesn't find one so the error is documented as the last line of code, where it finished looking.
# 6. Why did the interpreter give you this error?
# => see above - the loop should have a way to break

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => undefined local variable or method in 'south_park' for main
# 3. What additional information does the interpreter provide about this type of error?
# Object (NameError)
# 4. Where is the error in the code?
# => in the only line of code - it does nothing
# 5. Why did the interpreter give you this error?
# => Because the ruby interpreter doesn't understand the command 'south_park', it is looking for it to be declared as a variable or method. 'Object (NameError)' tells us it that without instructions it doesn't even know what type of object this is intended to be.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => undefined method 'cartman' for main
# 3. What additional information does the interpreter provide about this type of error?
# => Object: (NoMethodError)
# 4. Where is the error in the code?
# => in its very existence...
# 5. Why did the interpreter give you this error?
# => Same as the example above, the interpreter got one step further this time, deciding this was intended to be a method call because of the empty parentheses, but found no such method defined.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => (1 for 0) (ArgumentError)
# 4. Where is the error in the code?
# => in the method call - line 69
# 5. Why did the interpreter give you this error?
# => the method is defined as accepting no arguments, the mistake was made in the call, which has one argument, but the interpreter doesn't throw an error until it checks the method on line 65.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 84
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => (0 for 1) (ArgumentError)
# 4. Where is the error in the code?
# => line 88 where the method is called
# 5. Why did the interpreter give you this error?
# => the method was called with no arguments - it's defined with one argument, which is not optional. It must be called with exactly one argument.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 105
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => (1 for 2) (ArgumentError)
# 4. Where is the error in the code?
# => 109 where the method is called
# 5. Why did the interpreter give you this error?
# => the method is called with one argument when it's defined with 2. Even though the argument it's called with is a sentence containing 12 words, it's wrapped in one pair of quotes, so it is one string and is treated as one argument.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# => (TypeError)
# 4. Where is the error in the code?
# => it's a weird thing to try..
# 5. Why did the interpreter give you this error?
# => 5 is an integer, of object type Fixnum. The line of code attempts to multiply its value by the value of the string, which is not allowed in Ruby. Strings must be converted to Fixnums to allow mathematical functions.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# => (ZeroDivisionError)
# 4. Where is the error in the code?
# => right where 20 is divided by zero
# 5. Why did the interpreter give you this error?
# => a variable is set to an impossible value. Ruby performs mathematical calculations, and if something is not allowed mathematically it will not be evaluated. No value can be assigned to the variable.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# => cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# => (LoadError) - it also provides the path the interpreter is searching for the file
# 4. Where is the error in the code?
# => in the assumtion that there is a file in that particular path
# 5. Why did the interpreter give you this error?
# => to execute this code the interpreter must look in the path implied. If it's not found it stops there and gives this error.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#
# - Which error was the most difficult to read?
# => The errors I find most confusing out of these generally look like the first two. Although these were straightforward in this exercise, they reflect a large range of issues and it can be really tough to diagnose where your code broke when it just gives you the last line of code and says "unexpected end of input". This could mean the code broke anywhere, and you need to check all your methods for bad loops, bad logic or just methods or blocks without the keyword 'end'

# - How did you figure out what the issue with the error was?
# => With these in particular I didn't need the error codes to tell what was wrong with the code.

# - Were you able to determine why each error message happened based on the code?
# => Yes the error messages were strightforward in this exercise, although it's hard to determine where exactly the issue is when it gets more complicated, because if you see where I've cited the error message line is, it often doesn't line up with where the actual mistake is. The error message just gives you the line where the interpreter gets stuck, but then you need to investigate whether the mistake was made when the method was called or somewhere in its definition etc.

# - When you encounter errors in your future code, what process will you follow to help you debug?
# => I'll go to the problematic line and try to think like an interpreter, using the error message as a clue. If I get stuck I can always Google the error message for help.