# Virus Predictor

# I worked on this challenge [with: Kevin Huang].
# We spent [1.25] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative acts as though it copies and pastes the code from another file into the current program. It makes the variables and methods of another file available to the current code.
#
# require_relative allows you to point to a file within the same directory, whereas require would require you to point to the file location with its full path. ie:
# require /my_projects/repo/other_file.rb
# vs
# require_relative other_file.rb



#### state_data starts here > ___
#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


# { "key" => value }
# Hash rocket syntax

# { key: value }
# Colon / Rails 4 syntax

# { key: value} is the same as...
# { :key => value }

# It can help readability
# {key: {key: value}}

# :symbol => value
# symbol: value # syntax sugar

# "Alabama" => { :population_density => 94.65,
#                :population         => 4822023 }

# $my_variable = 1
# $my_variable = 2

# MY_VARIABLE = 1
# MY_VARIABLE = 2
# # NOT ALLOWED!

# A constant has global scope, with one exception
# If a constant is defined INSIDE a class, it only has class level scope.
# @@class_variable

#
require_relative 'state_data'


class VirusPredictor


  ## Initializes a new instance of the class pulling the data that is passed through it as arguments.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  ## Calls the two other methods of this class.
  def virus_effects
    # This is the beginning of object oriented design.
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
    print_results
  end

  private

  ## This calculates the predicted number of deaths in a virus outbreak, using the population_density data to determine the severity of the outbreak by population.

  def predicted_deaths #(population_density, population, state)
    # How are arguements initialized inside a method?
    # => As local variables.

    # population NOT @population

    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end
  end

  ## This method calculates the time it takes for the outbreak to spread using the population density.

  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @speed = 0.0
    # REFACTOR: Rename speed variable to time or months.


    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end
  end


  def print_results
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end


end


# 1. Readability
# 2. Logic & Redundancy


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# array.each |current_element|

# hash.each |key, value|
# hash.each |state_name, state_attributes|


# def find_state_data()
  # STATE_DATA.each do |state_name, state_attributes|
  #   current_state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
  #   current_state.virus_effects
  # end
# end


# state_name             => "Alabama"
# state_attributes       => {pop: 20, den: 100}

# STATE_DATA[state_name] => {pop: 20, den: 100}


# STATE_DATA[state_name][:population]
# state_attributes[:population]


STATE_DATA.each do |state_name, state_attributes|
  current_state = VirusPredictor.new(state_name, state_attributes[:population_density], state_attributes[:population])
  current_state.virus_effects
end



# 1. Take a piece of existing driver code
# 2. Turn it into a template by replacing the parts that change with variables.
# 3. Use your template inside a loop.
# 4. Refactor the logic is desired.

# find_state_data()

# STATE_DATA
# state_name => {state_information}


# loops have iterations
# each iteration is the current iteration

# current_state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
# current_state.virus_effects



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects




#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# => The first keys are strings, so they must use rocket syntax
# => The nested keys are symbols, so they can use the colon
# => syntactic sugar Ruby provides. This is just a shorthand
# => for ease and readability.

# What does require_relative do? How is it different from require?

# => It links to the given file so that its methods and
# => variables are accessible from the current file.
# => It allows the interpreter to search for a path relative to
# => the file being run, as opposed to 'require', which only
# => recognizes the full path.

# What are some ways to iterate through a hash?

# => We used hash.each, which is the same as hash.each_pair
# => passing in |key, value| as the arguments.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# => The methods took arguments that were initialized as local
# => variables, but then never referred to them. Instead,
# => they used the instance variables that were identical,
# => so they were not necessary to list as arguments in the
# => first place.

# What concept did you most solidify in this challenge?

# => Making the methods within a class as simple as possible
# => and providing them as tools for the driver code to do
# => the work was a revelation. My perception of class usage
# => previous to this challenge was to put all the functionality
# => into class methods so they could just be simply called
# => in the driver code, but it's valuable to have methods
# => outside the class to avoid bloating the purpose of the
# => class and making it more difficult to maintain.