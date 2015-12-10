# This method accepts an array of names from a cohort and arranges them in small groups.

# Pseudocode:

# Input: An array of names, an optional integer representing target group size
# Output: A hash containing student names and assigned groups
# Steps:
# => Determine number of names and divide by target group size
# => Create a new hash
# => Iterate over cohort names and add to hash, looping through group numbers to assign to each name.
# => When last group number is hit, group loop restarts
# => Return completed hash

# Initial code:

cohort_squirrels = ["Alex Forger", "Alexander Nelson", "Karen Ball", "Christopher Bovio", "Gino Paul Capio", "Jonathan Chin", "Claire Samuels", "Ray Curran", "David Louie", "David Spivey", "Max Davis", "Devin Mandelbaum", "Afton Downey", "Jordan Fox", "Rebecca Gahart", "Gary Wong", "Hodges Glenn", "Everett Golden", "Christopher Graf", "Alana Hanson", "LeeAnne Hawley", "Sabri Helal", "Thomas Huang", "Jeff Schneider", "Jillian Dunleavy", "Kevin Huang", "Khamla Phimmachack", "KT Khoo", "Andrew Kim", "Joseph Kim", "Michal Klimek", "Nathan Knockeart", "Brigitte Kozena", "Donald Lang", "Tiffany Larson", "Liam Mackey", "Johanna Lonn", "Charlotte Manetta", "Tyler McKenzie", "Katie Meyer", "Meagan Munch", "Lucas Nagle", "Lydia Nash", "Jovanka Nikolovski", "James O'Neal", "Greg Park", "Patrick Oliphant", "Peter Lowe", "Lauren Reid", "Roche Janken", "David Rothschild", "Susan Savariar", "Kurt Schlueter", "Sharon Claitor", "Marshall Sosland", "Catie Stallings", "Steven King", "Eric Tenza", "Timur Catakli", "Todd Seller", "Dan Turcza", "Lindsey Ullman", "Raj Vashist", "Violet Dang", "Chris Wong", "Angelika Yoder", "Michelle Zulli"]

def acct_groups (cohort, grp_size = 4)
  p "That's sad.." if grp_size < 3
  p "Try smaller groups for better accountability!" if grp_size > 5

  num_of_grps = cohort.length / grp_size
  groups = {}
  i = 1

  cohort.each do |name|
    i = 1 if i > num_of_grps
    groups[name] = i
    i += 1
  end

  groups
end

# Refactor:

def acct_groups1 (cohort, grp_size = 4)
  p "That's sad.." if grp_size < 3
  p "Try smaller groups for better accountability!" if grp_size > 5

  num_of_grps = cohort.length / grp_size
  groups = {}

  cohort.each_with_index do |name, i|
    groups[name] = i.divmod(num_of_grps)
  end

  groups

end

# This is a little shorter but maybe more obscure looking. You could easily check a student's group # with this short method:

def find_group (student, cohort)
  groups = acct_groups1(cohort)
  p "#{student} is in group #{groups[student][1]}"
end

# This method works for refactored method but not for the inital one.

p acct_groups (cohort_squirrels)

p acct_groups1 (cohort_squirrels)

find_group("David Spivey", cohort_squirrels)

# Plus the divmod spits out an extra piece of information, the number representing the order the student was entered into the group, which is not useful to us.

# Reflect

#