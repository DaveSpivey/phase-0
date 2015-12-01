# I worked on this challenge [with: Lucas Nagle].


# Your Solution Below
def valid_triangle?(a, b, c)
  return false if a == 0 || b == 0 || c ==0
  valid = true
  if a + b < c || a + c < b || b + c < a
    valid = false
  end
  valid
end