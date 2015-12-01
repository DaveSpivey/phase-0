# Calculate a Grade
def get_grade(avg)
  if avg >= 90 && avg <= 100
    return "A"
  elsif avg >= 80 && avg < 90
    return "B"
  elsif avg >= 70 && avg < 80
    return "C"
  elsif avg >= 60 && avg < 70
    return "D"
  else
    return "F"
  end
end

# I worked on this challenge [with: Lucas Nagle].


# Your Solution Below