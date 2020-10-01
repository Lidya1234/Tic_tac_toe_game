#!/usr/bin/env ruby

def board(board_arr)
  puts "#{board_arr[0]} | #{board_arr[1]}| #{board_arr[2]}"
  puts '__|__|__'
  puts "#{board_arr[3]} | #{board_arr[4]}| #{board_arr[5]}"
  puts '__|__|__'
  puts "#{board_arr[6]} | #{board_arr[7]}| #{board_arr[8]}"
end

def draw
  # to reset the array value
end

def getplayesrs
  validname = true
  player = ''

  loop do
    player = gets.chomp
    break if validname == true

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
player1 = getplayesrs

puts 'Enter name of second player'
player2 = getplayesrs

board_arr = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

board(board_arr)

availablemoves = [1, 2, 3, 4, 5, 6, 7, 8, 9]
boardisfull = false

winningmove = false
turn = 1
until boardisfull
  print "available moves #{availablemoves}" # updates after every move
  if turn.odd?

    puts "select a move  #{player1}"
    choice = move
    puts "#{player1} you chose #{choice} "

    board(board_arr)
    if winningmove
      puts "Winner #{player1}"
      break
    end

  else

    puts "select a move  #{player2}"
    choice = move
    puts "#{player2} you chose #{choice} "

    board(board_arr)
    if winningmove
      puts "Winner #{player2}"
      break
    end

  end
  turn += 1
  boardisfull = true if turn == 5
end
