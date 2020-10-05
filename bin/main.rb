#!/usr/bin/env ruby
require_relative '../game.rb'
require_relative '../player.rb'
class Validator
  def initialize(player, sign)
    @player = player
    @sign = sign
  end

  def choice
    puts 'Enter your choice'
    return
  end

  def position
    puts 'Invalid position'
    return
  end

  def move
    puts 'Invalid move'
    return
  end

  def won
    puts "winner:Congratulations "
  end

  def game_over
    puts 'Game Over'
    return
  end
end

def validname(player)
  return false if player.nil?

  true
end

def getplayesrs
  player = ''

  loop do
    player = gets.chomp
    break if validname(player) == true

    'Invalid name:Please enter valid Name'
  end
  player
end

puts 'Enter name of first player'
player1name = getplayesrs
sign1 = 'x'

player1 = Player.new(player1name, sign1)
puts "#{player1name}'s symbol #{sign1}"
puts 'Enter name of second player'
player2name = getplayesrs
if player2name == player1name
  puts 'Already taken:Enter a different name'
  player2name = getplayesrs
end
sign2 = 'y'
player2 = Player.new(player2name, sign2)
puts "#{player2name}'s symbol #{sign2}"

startgame = Game.new(player1, player2)
startgame.game_board
startgame.playgame
