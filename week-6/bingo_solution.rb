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
  attr_accessor :number
  attr_accessor :column
  attr_accessor :loss_streak

  def initialize(board)
    @bingo_board = board
    @column_headers = %w{ b i n g o }
    @column_key = { "b" => 0, "i" => 1, "n" => 2, "g" => 3, "o" => 4 }
    @columns = @bingo_board.flatten.group_by.with_index { |element, index| index % 5 } # create hash where keys are column number and values are all numbers in column
    @loss_streak = 0
  end

  def number_call
    @number = []
    @number << @column_headers.sample
    @number << rand(1..100)
    @column = @column_key[@number[0]] # determine column number of called number
    @number
  end

  def on_board?
    @columns[@column].include? @number[1] ? true : false
  end

  def mark
    collect_nums = {}
    @bingo_board.each.with_index do |row, i| # iterate rows
      if row.include? @number[1] # search for called number
        collect_nums[i] = row.index(@number[1]) # all instances of called number in new hash: {row: index}
      end
    end

    collect_nums.each_pair do |k, v|# for each row and index
      if v == @column #if index is in correct column
        @bingo_board[k][v].reject!.with_index {|e, i| i == 3}.insert(3, "x") # replace that number with x
      end
    end
  end

  def display_board
    puts ""
    puts "B   I   N   G   O"
    puts ""
    @bingo_board.each do |row|
      row.each { |value| print "#{value}  "}
      2.times {puts ""}
    end
  end

  def turn
    number_call
    sleep(0.4)
    puts ""
    puts "Number is..."
    puts ""
    sleep(0.4)
    puts "#{@number[0].upcase} #{@number[1]}!"
    sleep(0.7)
    if on_board?
      mark
      display_board
      puts "Got one"
      @loss_streak = 0
    else
      display_board
      puts "No luck"
      @loss_streak += 1
      if @loss_streak == 10
        puts ""
        puts "THE GAME IS RIGGED!"
        sleep(1)
        puts "..."
        sleep(0.5)
      end
    end

    puts "Another? ('y' or 'n')"
    result = gets.chomp
    if result.downcase == "y" || result.downcase == "yes"
      turn
    else
      puts ""
      puts "Thanks for playing!"
      p :D
    end
  end

  def begin
    puts "Welcome to Bingo! The nice young man will bring you your medicine soon."
    puts "Let's start! Here's your board:"
    display_board
    puts "Ready to begin? ('y' or 'n')"
    result = gets.chomp
    if result.downcase == "y" || result.downcase == "yes"
      turn
    else
      puts "Thanks for playing!"
      p :D
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

new_game.begin

#Reflection
