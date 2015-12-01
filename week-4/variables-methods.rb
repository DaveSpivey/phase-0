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
