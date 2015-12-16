# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #
  # => Create array
  # => Generate a letter, push to array
  # => Generate a number, push to array
  # => Return array

# Check the called column for the number called.
  #
  # => Create a new hash
  # => Iterate over board array and add each element to a new array by indexed column
  # => Populate hash with bingo letters as keys, new column arrays as values
  # => Check hash by key for number match to generated number

# If the number is in the column, replace with an 'x'
  #
  # => You said it, brother

# Display a column to the console
  #
  # => Print corresponding hash value array, each element to new line

# Display the board to the console (prettily)
  #
  # => Print board array one sub-array at a time on a new line

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @column_headers = %w{ b i n g o }
  end

  def number_call
    @number = []
    @number << column_headers.sample
    @number << rand(1..100)
    @number
  end

  def on_board?
    @bingo_board.include? @number[1]
  end

  def make_columns
    columns = @bingo_board.flatten.group_by.with_index { |element, index| index % 5 }

    column_names = {0: "b", 1: "i", 2: "n", 3: "g", 4: "o"}

    i = 0
    while i < 5
      columns[column_headers[i]] = columns.delete(column_names[i])
      i += 1
    end
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
