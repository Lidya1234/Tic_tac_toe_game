#!/usr/bin/env ruby

player1 = ""
player2 = ""
puts "Enter name of player1 "
valid = true
loop do
  player1 = gets.chomp

  break if valid == true

  puts "enter valid name"
end
puts "Enter name of player2"
loop do
  player2 = gets.chomp
  break if valid == true

  puts "enter valid name"
end

boardisfull = false
choicevalid = true
until boardisfull do
  puts "Enter choice of #{player1}"
  loop do
    choice = gets.chomp.to_i
    break if choicevalid == true
  end
  puts "#{player1} your choice is displayed"
  puts "Enter choice of #{player2}"
  loop do
    choice = gets.chomp.to_i
    break if choicevalid == true
  end
  puts "#{player2} your choice is displayed"
  boardisfull = true
end
