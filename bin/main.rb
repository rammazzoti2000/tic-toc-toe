#!/usr/bin/env ruby
# frozen_string_literal: true

puts 'Hello World'

# introduction of the game

puts
puts "Welcome to the Tic Tac Toe"
puts
puts "This is the modern addaption of the Tic Tac Toe, this is to be played with \"rum\" and \"vodka\""

# Taking information from the players
puts
puts "Two players game only"
puts
puts "Whoever gets a straight line wins (vertically, horizontially or diagonally). Lets Drink!" 
puts
print "player 1, please enter your name:- "

def valid_name(player)
  while player.empty?
    if player.length < 1
      puts "please enter valid_name"
      player == gets.strip
    end
  end
  return player 
end

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
puts "#{$player_1} choose between \"rum\" or #{vodka}."
def display_board
  "Turn #{@@count} happened.\n"
  "  #{board[0]} | #{board[1]} | #{board[2]}"
  " ---------------------------"
  "  #{board[3]} | #{board[4]} | #{board[5]}"
  " ---------------------------"
  "  #{board[6]} | #{board[7]} | #{board[8]}"
end

player_1_drink = gets.strip.downcase 

while player_1_drink
  if player_1_drink == "rum" || player_1_drink == vodka
    player_2_drink = player_1_drink == rum ? vodka : rum;
    puts "#{$player_1} chose \"#{player_1_drink}\" and #{$player_2} is assigned with the \"#{player_2_drink}\""
    break
  else
    puts "Error, Man is your liver weak? choose between #{rum} or \"#{vodka}\"."
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





