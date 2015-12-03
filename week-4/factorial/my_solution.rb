# Factorial

# I worked on this challenge [with: Marshall Sosland].


# Your Solution Below
def factorial(number)
  # Your code goes here
  if number == 0
    return 1
  end
  # define product variable
  product = 1
  # iterate through range 1 through number
  for i in (1..number)
  # multiply by product
    product = product * i
  end
  # return product
  return product
end