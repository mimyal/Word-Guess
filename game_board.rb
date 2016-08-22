# # For the dash_lines method that we'd been working on last Thursday: This method
# # was starting to look specifically like logic for updating the dash_array to me
# # -- I drafted an update to it below with it renamed to dash_array_logic, & separated
# # out the updating of the array and printing of the dash_line to separate methods.

# #require 'terminal-table'
# require_relative 'word_guess'
# require_relative 'art_work'
# require_relative 'game_play'

class GameBoard
  def initialize(word)
    @dash_array = Array.new(word.length, "_")
  end

# @TODO - this method is unused. Remove it? or Use it?
  def success(good_letters_locs) # needs the array of elements including letters & index
    puts
  end

  def print_game_board(letters) # the good or bad letters arrays
    puts "You are guessing: #{letters[0][0].to_s}" #for testing
    puts "Good/bad letters array is: #{ letters }"
    dash_array_logic(letters) # returns dash_line results
  end

  def dash_array_logic(letters)
    if letters[0].is_a?(Array) #good letters, letters.last[0] is the current input
      puts "The letter is correct"
      update_dash_array(letters)
        # replace the string "_ " with letter at index_loc
    elsif letters[0].is_a?(String) #bad letters, letters.last is the current input
      puts "The letter is incorrect"
    else
      puts "There is an error in the letter counting logic"
    end

    end #dash_lines

  def update_dash_array(good_letters_locs) #array of arrays
    @good_letters_at_index_loc = good_letters_locs
    @good_letters_at_index_loc.each do |good_letter_array|
      @dash_array[good_letter_array[1]] = good_letter_array[0]
    end
  end

  def print_dash_line
    print "Word: "
    @dash_array.each { |item| print item + " " }
    puts
  end

# # @TODO -- review usage & update or remove?
#   def dash_lines(letters)
#     if letters[0].is_a?(Array) #good letters, letters.last[0] is the current input
#       puts "The letter is correct"
#       letters.each do |letter, index_loc|
#
#         # replace the string "_ " with letter at index_loc
#       end #do
#     elsif letters[0].is_a?(String) #bad letters, letters.last is the current input
#       puts "The letter is incorrect"
#     else
#       puts "There is an error in the letter counting logic"
#     end
#
#   end #dash_lines

end #GameBoard
