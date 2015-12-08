# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define a variable as empty hash
  # set default quantity
  # print the list to the console (using p)
# output: hash containing items and values

# Method to add an item to a list
# input: item name and optional quantity, hash list
# steps:
# check hash for existing key: value pair
# if there, add to existing quantity
# if not, add the new key: value pair
# output: updated hash

# Method to remove an item from the list
# input: the key we're looking for (as string), hash list
# steps:
# iterate through hash keys to find match
# remove matched pair
# output:  updated hash

# Method to update the quantity of an item
# input: key to look for, hash list, quantity changed
# steps: find key within hash
# update value of that key with value parameter
# output: updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: print each key:value on a new line
# output: puts each item from hash as strings and integers


def create_list items
  list = {}
  default_qty = 1

  items.split(' ').each { |word| list[word] = default_qty }
  p list
end

def add_item list, new_item, qty
  if list.include? new_item
    list[new_item] += qty
  else
    list[new_item] = qty
   end
  p list
end

def remove_item list, item
  list.delete(item)
end

def update_item list, item, qty
  list[item] = qty
end

def print_list list
  list.each_pair { |item, value| puts "#{item}: #{value}" }
end


list = create_list "carrots apples cereal pizza"
add_item list, "lemonade", 2
add_item list, "tomatoes", 3
add_item list, "onions", 1
add_item list, "ice cream", 4
remove_item list, "lemonade"
update_item list, "ice cream", 1
print_list list


__END__

I'm trying out this format for a commented section at the end.  .. ok I like it.

- What did you learn about pseudocode from working on this challenge?

Mostly that it's hard to not get ahead of yourself, but it does force you to work out strategies, contradictions and broad data types etc. which is nice.

- What are the tradeoffs of using Arrays and Hashes for this challenge?

Hashes require a little more maneuvering, but in the end you can do more because you store more information in each entry and it binds them associatively, so there's a built-in relationship between the 2 objects.

- What does a method return?

All methods return an object, even if it's just 'nil'- in the cases above it was either a hash or a string

- What kind of things can you pass into methods as arguments?

Again, any object. Strings and integers are often passed as arguments, but in this challenge it was necessary to input the hash, so that it could be manipulated and returned from the method.

- How can you pass information between methods?

The method has to return the information, then that has to be input into another method via argument.

- What concepts were solidified in this challenge, and what concepts are still confusing?

I'm more familiar with manuipulating arrays, so when we encountered problems accessing or storing data I found myself wanting to use one enumerable method or another as if it were an array. After researching we found most of the basic array methods also applied to hashes, so this helps understand how to traverse the structure more easily.