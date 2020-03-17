#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/position.rb'
require_relative '../lib/players.rb'
require_relative '../lib/board.rb'


puts 'Hello World'
puts
puts "Welcome to the Tic Tac Toe. This is 2 players game"
puts
puts "This is the modern addaption of the Tic Tac Toe, this is to be played with \"rum\" and \"vodka\""
puts
puts "Whoever gets a straight line wins (vertically, horizontially or diagonally). Lets Drink!" 
puts

def valid_name(player)
  while player.empty?
    if player.length < 1
      puts "please enter valid_name"
      player == gets.strip
    end
  end
  return player 
end

print "player 1, please enter your name:- "
$player_1 = valid_name(gets.strip)
puts
puts "Welcome, player 1:- #{$player_1}"
puts

print "player 2, please enter your name:- "
$player_2 = valid_name(gets.strip)
puts
puts "Welcome, player 2:- #{$player_2}"
puts

rum = "rum  "
vodka = "vodka"

print "#{$player_1} choose between \"rum\" or \"#{vodka}\": - "

player_1_drink = gets.strip.downcase 

while player_1_drink
  if player_1_drink == "rum" || player_1_drink == vodka
    player_2_drink = player_1_drink == "rum" ? vodka : rum;
    puts "#{$player_1} chose \"#{player_1_drink}\" and #{$player_2} is assigned with the \"#{player_2_drink}\""
    break
  else
    puts "Error, Man is your liver weak? choose between \"rum\" or \"#{vodka}\"."
    puts player_1_drink = gets.strip
  end
end

def board_example
  puts
  puts "Lets look at the examples."
  puts
  puts "Choose the number in the board between 1 to 9"
  puts
  puts "   1  |   2   |   3    "
  puts " ---------------------- "
  puts "   4  |   5   |   6    "
  puts " ---------------------- "
  puts "   7  |   8   |   9    "
  puts
  puts " rum   |       | vodka  "
  puts " ---------------------- "
  puts " rum   | vodka |        "
  puts " ---------------------- "
  puts " vodka |       | rum    "
  puts
  puts "player with \"vodka\" won because got the stright line"
end

puts 
puts board_example

$board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts "Turn #{$count} happened.\n"
  puts "    #{board[0]}  |   #{board[1]}   | #{board[2]}  "
  puts " ------------------------ "
  puts "    #{board[3]}  |   #{board[4]}   | #{board[5]}  "
  puts " ------------------------ "
  puts "    #{board[6]}  |   #{board[7]}   | #{board[8]}  "
end

Player.new($player_1 , $player_2, player_1_drink, player_2_drink)

puts "#{switch_turn} choose a number"

p Position.get_position_num