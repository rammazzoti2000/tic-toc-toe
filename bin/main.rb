#!/usr/bin/env ruby
# frozen_string_literal: true

puts 'Hello World'

# introduction of the game

puts
puts "Welcome to the Tic Tac Toe"
puts

# Taking information from the players
puts "Two players game only"
puts
print "player_1, please enter your name:- "

player_1 = gets.strip
puts
puts "Welcome, player 1:- #{player_1}"
puts
print "player_2, please enter your name:- "

player_2 = gets.strip
puts
puts "Welcome, player 2:- #{player_2}"
puts
rum = "rum"
vodka = "vodka"
puts "#{player_1} choose between #{rum} or #{vodka}."

puts

player_1_drink = gets.strip.downcase

while player_1_drink
  if player_1_drink == rum || player_1_drink == vodka
    player_2_drink = player_1_drink == rum ? vodka : rum;
    puts "#{player_1} chose \"#{player_1_drink}\" and #{player_2} is assigned with the \"#{player_2_drink}\""
    break
  else
    puts "Error, Man is your liver weak? choose between #{rum} or #{vodka}."
    puts player_1_drink = gets.strip
  end
end

def display_board
  puts "  |  |  "
  puts "--------"
  puts "  |  |  "
  puts "--------"
  puts "  |  |  "
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

puts 
puts display_board
