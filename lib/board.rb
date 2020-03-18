# frozen_string_literal: true

require_relative 'position.rb'
require_relative 'players.rb'

class DisplayBoard < Player
  $winning_positions = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6]
  ]

  $board = Array.new(9, ' ')

  attr_accessor :board

  def self.update_board(num)
    if $board[num] == ' '
      $board[num] = $current_drink
      display_board($board)
    else
      'Position already taken, try an empty one!'
    end
  end
end
