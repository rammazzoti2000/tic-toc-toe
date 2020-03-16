
class DisplayBoard
  @@count = 0
  attr_accessor :display_board 

  def initialize(display_board)
    @display_board = display_board
    @@count += 1
  end

  def display_board(board)
    puts "Turn #{@@count} happened.\n"
    puts "  #{board[0]} | #{board[1]} | #{board[2]}"
    puts " ---------------------------"
    puts "  #{board[3]} | #{board[4]} | #{board[5]}"
    puts " ---------------------------"
    puts "  #{board[6]} | #{board[7]} | #{board[8]}"
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
game = DisplayBoard.new(board)
puts game.display_board(board)