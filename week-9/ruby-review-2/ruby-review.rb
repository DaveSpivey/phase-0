# Introduction to Inheritance

# I worked on this challenge [by myself].


# Pseudocode
# => city: sub
# => students: super
# => name: super
# => p0_start_date: super
# => immersive_start_date: super
# => graduation_date: super
# => email_list: super
# => num_of_students: super

# => add_student: super
# => remove_student: super
# => currently_in_phase: super
# => graduated?: super

# CREATE class for Cohort
# INITIALIZE with name, p0_start_date, and empty variables for student list, email list and num_of_students
# DEFINE instance variables for immersive and graduation dates based on p0 date
# DEFINE add_student, which takes a student object and adds it to the students attribute
# DEFINE remove_student, checking if a student is in the students attribute and removing if so
# DEFINE currently_in_phase which checks the phase schedule with instance start date against current date
# DEFINE graduated? to return true if current date is past start date plus phase schedule time.
# CREATE class for LocalCohort
# INITIALIZE inheriting all attributes from superclass, as well as a city attribute
# CREATE class for Student
# INITIALIZE with name, city, cohort name and email


# Initial Solution
require 'date'

class GlobalCohort
  attr_accessor :students, :email_list, :num_of_students
  attr_reader :name, :p0_start_date, :immersive_start_date, :graduation_date

  def initialize(name, start_year, start_month, start_day)
    @today = Date.today
    @name = name
    @p0_start_date = Date.new(start_year, start_month, start_day)
    @students = []
    @email_list = {}
    @num_of_students = @students.length
    @immersive_start_date = p0_start_date + 63
    @graduation_date = p0_start_date + 133
  end

  def add_student(student)
    @students << student.name if !@students.include? student
    @email_list[student.name] = student.email
  end

  def remove_student(student)
    if @students.include? student
      @students.reject! {|name| name == student}
    end
  end

  def currently_in_phase
    if (@today - p0_start_date < 63)
      "phase 0"
    elsif (@today - p0_start_date >= 63 && @today - p0_start_date < 84)
      "phase 1"
    elsif (@today - p0_start_date >= 84 && @today - p0_start_date < 105)
      "phase 2"
    elsif (@today - p0_start_date >= 105 && @today - p0_start_date < 133)
      "phase 3"
    else
      "graduated"
    end
  end

  def graduated?
    return true if (@today - p0_start_date >= 133)
    false
  end
end

class LocalCohort < GlobalCohort
  attr_reader :city

  def initialize(name, start_year, start_month, start_day, city)
    super(name, start_year, start_month, start_day)
    @city = city
  end
end

class Student
  attr_reader :name, :city, :cohort, :email

  def initialize(name, city, cohort, email)
    @name = name
    @city = city
    @cohort = cohort
    @email = email
  end
end

# Driver Code

dave = Student.new("Dave", "San Francisco", "Squirrels", "dspive1@gmail.com")
raja = Student.new("Raja", "San Francisco", "Squirrels", "iamadog@gmail.com")

sf_squirrels = LocalCohort.new("Squirrels", 2015, 11, 9, "San Francisco")

sf_squirrels.add_student(dave)
sf_squirrels.add_student(raja)

# p sf_squirrels.students
# p sf_squirrels.email_list
# p dave.cohort
# p sf_squirrels.p0_start_date
# p sf_squirrels.currently_in_phase
p sf_squirrels.p0_start_date.to_s
# p sf_squirrels.graduated?

# Reflection

# What concepts did you review in this challenge?

# Inheritance. It makes sense to have superclasses take care of more general behavior.
# It makes the code more modular and clean. In this exercise though almost all of the attributes and methods
# made more sense defined for the superclass, but I don't think that's a bad thing for functionality or design.

# What is still confusing to you about Ruby?

# Still want a better grasp on composition, so I'm eager to dive in to the POODR book.

# What are you going to study to get more prepared for Phase 1?

# POODR and Sublime shortcuts are my priorities for the next few days.