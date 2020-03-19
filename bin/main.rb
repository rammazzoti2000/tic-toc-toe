#!/usr/bin/env ruby

require_relative '../lib/players.rb'

puts 'Welcome to the Tic Tac Toe. This is 2 players game'
puts
puts 'This is the modern addaption of the Tic Tac Toe, this is to be played with \'rum\' and \'vodka\''
puts

def valid_name(player)
  while player.empty?
    if player.length <= 1
      puts 'please enter valid_name'
      player = gets.strip
    end
  end
  player
end

print 'player 1, please enter your name:- '
@player1 = valid_name(gets.strip)
puts
puts "Welcome, player 1:- #{@player1}"
puts

print 'player 2, please enter your name:- '
@player2 = valid_name(gets.strip)
puts
puts "Welcome, player 2:- #{@player2}"
puts

def board_example
  puts
  puts 'Lets have a look at how this game is played.'
  puts
  puts 'Choose the number in the board between 1 to 9'
  puts
  puts '   1  |   2   |   3    '
  puts ' ---------------------- '
  puts '   4  |   5   |   6    '
  puts ' ---------------------- '
  puts '   7  |   8   |   9    '
  puts
  puts 'Whoever gets a straight line wins(vertically, horizontially or diagonally). Lets Drink!'
  puts
  puts ' rum   |       | vodka  '
  puts ' ---------------------- '
  puts ' rum   | vodka |        '
  puts ' ---------------------- '
  puts ' vodka |       | rum    '
  puts
  puts 'player with \'vodka\' won because got the stright line'
end

puts
puts board_example

def display_board(_)
  puts
  puts "Turn #{Player.counts} happened.\n"
  puts
  puts "    #{Player.boards[0]}   |  #{Player.boards[1]}   |  #{Player.boards[2]}  "
  puts ' ------------------------------- '
  puts "    #{Player.boards[3]}   |  #{Player.boards[4]}   |  #{Player.boards[5]}  "
  puts ' ------------------------------- '
  puts "    #{Player.boards[6]}   |  #{Player.boards[7]}   |  #{Player.boards[8]}  "
end

def position_num
  while Player.boards.include?(' ')
    @get_position = gets.strip.to_i
    return @get_position if (1..9).include?(@get_position)

    'Error, invaild input!!! Choose a Number between 1 - 9'
  end
end

# rubocop:disable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
def play
  rum = 'rum  '
  vodka = 'vodka'

  print "#{@player1} choose between \'rum\' or \'vodka\':- "
  player1_drink = gets.strip.downcase

  while player1_drink
    if player1_drink == 'rum' || player1_drink == vodka
      player2_drink = player1_drink == 'rum' ? vodka : rum
      puts
      puts "\'#{@player1}\' chose \'#{player1_drink}\' and \'#{@player2}\' is assigned with \'#{player2_drink}\'"
      puts
      player1_drink = rum if player2_drink == vodka
      break
    else
      puts "Error, Man is your liver weak? choose between \'rum\' or \'#{vodka}\'."
      puts player1_drink = gets.strip
    end
  end

  match = Player.new(@player1, @player2, player1_drink, player2_drink)

  while Player.boards.include?(' ')

    puts "#{match.switch_turn} choose a number between 1 to 9"

    loop do
      puts result = match.update_board(position_num - 1)
      break if result != 'Position already taken, try an empty one!'
    end

    Player.winning_positionss.each do |combinations|
      if combinations.all? { |a| Player.boards[a] == match.current_drink }
        return puts match.current_player.capitalize + ' Won!!!'
      end
    end
  end

  puts 'It\'s a draw'
end
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity

play
