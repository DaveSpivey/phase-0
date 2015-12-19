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

# class BingoBoard
#   attr_accessor :number
#   attr_accessor :column
#   attr_accessor :loss_streak

#   def initialize(board)
#     @bingo_board = board
#     @column_headers = %w{ b i n g o }
#     @column_key = { "b" => 0, "i" => 1, "n" => 2, "g" => 3, "o" => 4 }
#     @columns = @bingo_board.flatten.group_by.with_index { |element, index| index % 5 } # create hash where keys are column number and values are all numbers in column
#     @loss_streak = 0
#   end

#   def number_call
#     @number = []
#     @number << @column_headers.sample
#     @number << rand(1..100)
#     @column = @column_key[@number[0]] # determine column number of called number
#     @number
#   end

#   def on_board?
#     @columns[@column].include? @number[1] ? true : false
#   end

#   def mark
#     collect_nums = {}
#     @bingo_board.each.with_index do |row, i| # iterate rows
#       if row.include? @number[1] # search for called number
#         collect_nums[i] = row.index(@number[1]) # all instances of called number in new hash: {row: index}
#       end
#     end

#     collect_nums.each_pair do |k, v|# for each row and index
#       if v == @column #if index is in correct column
#         @bingo_board[k][v].reject!.with_index {|e, i| i == @column}.insert(@column, "x") # replace that number with x
#       end
#     end
#   end

#   def display_board
#     puts ""
#     puts "B   I   N   G   O"
#     puts ""
#     @bingo_board.each do |row|
#       row.each { |value| print "#{value}  "}
#       2.times {puts ""}
#     end
#   end

#   def turn
#     number_call
#     sleep(0.4)
#     puts ""
#     puts "Number is..."
#     puts ""
#     sleep(0.4)
#     puts "#{@number[0].upcase} #{@number[1]}!"
#     sleep(0.7)
#     if on_board?
#       mark
#       display_board
#       puts "Got one"
#       @loss_streak = 0
#     else
#       display_board
#       puts "No luck"
#       @loss_streak += 1
#       if @loss_streak == 10
#         puts ""
#         puts "THE GAME IS RIGGED!"
#         sleep(1)
#         puts "..."
#         sleep(0.5)
#       end
#     end

#     puts "Another? ('y' or 'n')"
#     result = gets.chomp
#     if result.downcase == "y" || result.downcase == "yes"
#       turn
#     else
#       puts ""
#       puts "Thanks for playing!"
#       p :D
#     end
#   end

#   def begin
#     puts "Welcome to Bingo! The nice young man will bring you your medicine soon."
#     puts "Let's start! Here's your board:"
#     display_board
#     puts "Ready to begin? ('y' or 'n')"
#     result = gets.chomp
#     if result.downcase == "y" || result.downcase == "yes"
#       turn
#     else
#       puts "Thanks for playing!"
#       p :D
#     end
#   end
# end

# Refactored Solution

class BingoBoard
  # attr_accessor :number
  # attr_accessor :column
  # attr_accessor :loss_streak
#unnecessary_^

  def initialize(board)
    @bingo_board = board
    @column_headers = %w{ b i n g o }
    @column_key = { "b" => 0, "i" => 1, "n" => 2, "g" => 3, "o" => 4 }
#    #@columns = @bingo_board.flatten.group_by.with_index { |element, index| index % 5 } # create hash where keys are column number and values are all numbers in column
    @loss_streak = 0
  end

  def number_call
#    @number = []
    @number = [@column_headers.sample, rand(1..100)]
    @column = @column_key[@number[0]] # determine column number of called number
#    @number
  end

  def mark_if_on_board
#    #@columns[@column].include? @number[1] ? true : false
    @on_board = false
    @bingo_board.each do |row|
      if row[@column] == @number[1]
        row.reject! { |e| e == @number[1] }.insert(@column, "X")
        @on_board = true
      end
    end
  end

#       #merged mark and on_board

  # def mark
  #   collect_nums = {}
  #   @bingo_board.each.with_index do |row, i| # iterate rows
  #     if row.include? @number[1] # search for called number
  #       collect_nums[i] = row.index(@number[1]) # all instances of called number in new hash: {row: index}
  #     end
  #   end

  #   collect_nums.each_pair do |k, v|# for each row and index
  #     if v == @column #if index is in correct column
  #       @bingo_board[k][v].reject!.with_index {|e, i| i == 3}.insert(3, "x") # replace that number with x
  #     end
  #   end
  # end

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
    mark_if_on_board
    if @on_board
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
        @loss_streak = 0
      end
    end

    @columns = @bingo_board.flatten.group_by.with_index { |element, index| index % 5 }
    if @columns.has_value? ["X", "X", "X", "X", "X"]
      p "YOU WIN!"
    else
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



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.begin

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# => Once again, even though I tried to think hard about the limitations of my pseudocode, it was insufficient.
# => It ended up glossing over lots of details that didn't end up working out.

# What are the benefits of using a class for this challenge?

# => There's a lot of functionality and passing back and forth of variables and methods.
# => If you wanted to play with a new board setup it would be a huge headache.

# How can you access coordinates in a nested array?

# => Well you can try to do it like I did in the initial solution, by creating a hash vertically indexing groups by column
# => or you can do the simpler way, like I did when I realized you could check the column number easily on the spot,
# => without the hoopla of creating new data structures to categorize -- like this: @bingo_board[row][index]

# What methods did you use to access and modify the array?

# => #flatten, #group_by, #sample, #reject!, #insert, #each

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# => #sample was a new one to me. It accepts an array as argument and returns a random element (or elements) from that array.
# => I called it like: @column_headers.sample

# How did you determine what should be an instance variable versus a local variable?

# => Any time I knew the variable would be necessary outside the method it was defined in I made it an instance variable.

# What do you feel is most improved in your refactored solution?

# => My initial methods #on_board? and #mark were sloppy beasts.
# => I merged them into #mark_if_on_board and the code is concise and way more simple.
# => Also realized I hadn't built in a way to win the game the first time around, whoops.