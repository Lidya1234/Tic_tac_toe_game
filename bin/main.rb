#!/usr/bin/env ruby
board_arr = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
def board(board_arr)
  puts "#{board_arr[0]} | #{board_arr[1]}| #{board_arr[2]}"
  puts '__|__|__'
  puts "#{board_arr[3]} | #{board_arr[4]}| #{board_arr[5]}"
  puts '__|__|__'
  puts "#{board_arr[6]} | #{board_arr[7]}| #{board_arr[8]}"
end

def draw
  board_arr = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
end

def getplayesrs
  validname = true
  player = ''
  sign = ''
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

def move(player)
  choicevalid = true
  choice = ""
  loop do
    choice = gets.chomp.to_i

    break if choicevalid == true

    puts 'Invalid move'
  end
  choice
end
player1 = ''
player1sign = ''
puts 'Enter name of first player'
player1 = getplayesrs

puts "#{player1} Enter sign"
player1sign = getsign

player12 = ''
player2sign = ''
puts 'Enter name of second player'
player2 = getplayesrs

puts "#{player2} Enter sign"
player2sign = getsign
board(board_arr)

availablemoves = [1, 2, 3, 4, 5, 6, 7, 8, 9]
boardisfull = false

winningmove = false
turn = 1
until boardisfull

  if turn % 2 == 1

    print "available moves #{availablemoves}" # updates after every move
    puts "select a move  #{player1}"
    choice = move(player1)
    puts "#{player1} you chose #{choice} "
    if winningmove
      puts "Winner #{player1}"
      break
    end
    turn += 1
  else

    print "available moves #{availablemoves}" # updates after every move
    puts "select a move  #{player2}"
    choice = move(player2)
    puts "#{player2} you chose #{choice} "
    if winningmove
      puts "Winner #{player2}"
      break
    end
    turn += 1
  end
  if turn == 5
    boardisfull = true
  end
end
board_arr = draw
