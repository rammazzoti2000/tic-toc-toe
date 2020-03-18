#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/position.rb'
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
@player_1 = valid_name(gets.strip)
puts
puts "Welcome, player 1:- #{@player_1}"
puts

print 'player 2, please enter your name:- '
@player_2 = valid_name(gets.strip)
puts
puts "Welcome, player 2:- #{@player_2}"
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
  puts "Turn #{Player.count} happened.\n"
  puts "    #{Player.board[0]}   |  #{Player.board[1]}   |  #{Player.board[2]}  "
  puts ' ------------------------------- '
  puts "    #{Player.board[3]}   |  #{Player.board[4]}   |  #{Player.board[5]}  "
  puts ' ------------------------------- '
  puts "    #{Player.board[6]}   |  #{Player.board[7]}   |  #{Player.board[8]}  "
end

def play
  rum = 'rum  '
  vodka = 'vodka'

  print "#{@player_1} choose between \'rum\' or \'vodka\':- "
  player_1_drink = gets.strip.downcase

  while player_1_drink
    if player_1_drink == 'rum' || player_1_drink == vodka
      player_2_drink = player_1_drink == 'rum' ? vodka : rum
      puts
      puts "\'#{@player_1}\' chose \'#{player_1_drink}\' and \'#{@player_2}\' is assigned with \'#{player_2_drink}\'"
      puts
      if player_2_drink == vodka
        player_1_drink = rum
      end
      break
    else
      puts "Error, Man is your liver weak? choose between \'rum\' or \'#{vodka}\'."
      puts player_1_drink = gets.strip
    end
  end

  match = Player.new(@player_1, @player_2, player_1_drink, player_2_drink)

  while Player.board.include?(' ')

    puts "#{match.switch_turn} choose a number between 1 to 9"

    loop do
      puts result = match.update_board((Position.get_position_num) - 1)
      if result != 'Position already taken, try an empty one!'
        break
      end
    end

    Player.winning_positions.each do |combinations|
      if combinations.all? { |a| Player.board[a] == match.current_drink }
        return puts match.current_player.capitalize + ' Won!!!'
        break
      end
    end
  end

  puts 'It\'s a draw'
end

play
