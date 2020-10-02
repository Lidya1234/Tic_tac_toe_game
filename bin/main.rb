#!/usr/bin/env ruby
require_relative '../game.rb'
require_relative '../player.rb'



def getplayesrs
  validname = true
  player = ''

  loop do
    player = gets.chomp 
    'Invalid name:Please enter valid Name'
  end
  player
end

def getsign
  validsign = true
  sign = ''
  loop do
    sign = gets.chomp
    break if validsign == true

    'Invalid sign:Please enter valid sign'
  end
  sign
end

def move
  choicevalid = true
  choice = ''
  loop do
    choice = gets.chomp.to_i

    break if choicevalid == true

    puts 'Invalid move'
  end
  choice
end

puts 'Enter name of first player'
player1name = getplayesrs
puts "#{player1name}  Enter your sign"
sign1 = getsign
player1=player.new(player1name ,sign1)
puts 'Enter name of second player'
player2name = getplayesrs
if player2name == player1name
puts "Already taken:Enter a different name"
player2name = getplayesrs
puts "#{player2name}  Enter your sign"
sign2 = getsign
if sign1 == sign2
puts "Already taken:Enter a different sign"
sign2 =getsign
player2= Player.new(player2name ,sign2)
startgame=Game.new(player1 ,player2)
startgame.board
startgame.playgame
