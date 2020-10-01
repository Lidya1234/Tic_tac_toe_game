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
availablemoves = [1, 2, 3, 4, 5]
boardisfull = false
choicevalid = true
winningmove = false
until boardisfull
  puts "Board displayed"
  puts "select a move  #{player1}"
  print availablemoves
  puts
  loop do
    choice = gets.chomp.to_i

    break if choicevalid == true

    puts 'Invalid move'
    puts "board displayed"
  end
  puts "#{player1} you chose #{choice} "
  if winningmove
    puts "Winner #{player1}"
    break
  end
  puts "Board displayed"
  puts "Select a move  #{player2}"
  print availablemoves # prints available moves
  puts
  loop do
    choice = gets.chomp.to_i
    break if choicevalid == true # check validity of the choice

    puts 'Invalid move'
    puts "board displayed"
  end
  puts "#{player2} you chose #{choice}"
  winningmove = true
  if winningmove
    puts "Winner #{player2}"
    break
  end

  boardisfull = true
end
