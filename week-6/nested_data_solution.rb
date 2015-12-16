# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|i| i+= 5}
  else
    element += 5
  end
end
  p number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def startup_name_generator (array)
  array.map! do |element|
    if element.kind_of?(String)
      element += "ly"
   else
      startup_name_generator (element)
    end
  end
end
p startup_name_generator(startup_names)

# Refactor

def addifier(array, num)
  array.map! do |element|
    if element.kind_of?(Integer)
      element += num
    else
      addifier(element, num)
    end
  end
end

p addifier(number_array, 5)


# Reflect

# => What are some general rules you can apply to nested arrays?

# => Look at the whole structure - take each overarching structure at a time

# => What are some ways you can iterate over nested arrays?

# => #each and #map still work the same as before, but you need to run a nested method for each level of structure. If just printing, #puts does the job.

# => Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# => We mostly used methods we'd used before, with the exception of #kind_of? which was new to both of us before this challenge.
# We also implemented a recursive method, which was pretty cool and saves you some time (though not processing time) if the nest goes deeper than one level down.