class Game
  WINNERS_SET = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ].freeze
 attr_accessor :board_array
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
   @board = [' ', ' ' , ' ', ' ', ' ' ,' ' , ' ', ' ', ' ', ' ']
    @filledpos_player1 = []
    @filledpos_player2 = []
  end

 

  
  def game_board
    puts "#{@board[0]} | #{@board[1]}| #{@board[2]}"
    puts puts '__|__|__'
    puts "#{@board[3]} | #{@board[4]}| #{@board[5]}"
    puts puts '__|__|__'
    puts "#{@board[6]} | #{@board[7]}| #{@board[8]}"
  end




  def winner?(winner)
    if winner == @player1

      WINNERS_SET.each { |x| return true if x.all?(@filledpos_player1) }
    else

      WINNERS_SET.each { |x| return true if x.all?(@filledpos_player2) }
    end
    false
  end

  def draw
     @board = [' ', ' ' , ' ', ' ', ' ' ,' ' , ' ', ' ', ' ', ' ']
  end

  def boardfull
   
    @board.each {|x| return false  if x == ' '}
    true
  end
 def move
  choicevalid = false
  choice = ' '
  puts "Enter your choice here"
  loop do
    choice = gets.chomp
    if choice =~ /^-?[0-9]+$/
      choicevalid =true
      choice =choice.to_i
    end
    break if choicevalid == true

    puts 'Invalid move'
  end
  choice
end