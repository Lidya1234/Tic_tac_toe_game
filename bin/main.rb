#!/usr/bin/env ruby

player1 = ''
player2 = ''
choice = ''
puts 'Enter name of first player'
valid = true
loop do
  player1 = gets.chomp

  break if valid == true

  puts 'Enter valid name'
end
puts 'Enter name of second player'
loop do
  player2 = gets.chomp
  break if valid == true

  puts 'Enter valid name'
end

boardisfull = false
choicevalid = true
until boardisfull do
  puts "Enter your choice  #{player1}"
  loop do
    choice = gets.chomp.to_i
    break if choicevalid == true
  end
  puts "#{player1} you chose #{choice} "
  puts "Enter your choice  #{player2}"
  loop do
    choice = gets.chomp.to_i
    break if choicevalid == true
  end
  puts "#{player2} you chose #{choice}"
  boardisfull = true
end
