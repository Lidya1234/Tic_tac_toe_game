require_relative '../main.rb'
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
  attr_accessor :won
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @filledpos_player1 = []
    @filledpos_player2 = []
    @validate = Validator.new(@player, @sign)
  end

  def game_board
    puts "#{@board[0]} | #{@board[1]}| #{@board[2]}"
    puts puts '__|__|__'
    puts "#{@board[3]} | #{@board[4]}| #{@board[5]}"
    puts puts '__|__|__'
    puts "#{@board[6]} | #{@board[7]}| #{@board[8]}"
  end

  def draw
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    game_board
  end

  def boardfull
    if @board.any? { |x| x == ' ' }
      false
    else
      true
    end
  end

  def move
    choicevalid = false
    choice = ' '
    @validate.choice
    loop do
      choice = gets.chomp
      if choice =~ /^-?[0-9]+$/
        choicevalid = true
        choice = choice.to_i
      end
      break if choicevalid == true

      @validate.move
    end
    choice
  end

  def movement(position, sign)
    loop do
      if @board[position - 1] == ' '

        @board[position - 1] = sign
        break
      else
        @validate.position
        position = move
      end
    end
  end

  def winner(winner)
    if winner == @player1

      WINNERS_SET.each { |x| return true if x & @filledpos_player1 == x }
      false
    else

      WINNERS_SET.each { |x| return true if x & @filledpos_player2 == x }
      false
    end
    false
  end

  def playgame
    turn = 1
    player = ''
    until boardfull

      choice = move
      if turn.odd?
        movement(choice, @player1.sign)
        @filledpos_player1 << choice
        player = @player1
      else
        movement(choice, @player2.sign)
        @filledpos_player2 << choice
        player = @player2
      end
      won = winner(player)

      if won == true

        game_board
        @validate.won
        break
      end

      turn += 1
      game_board
    end
    @validate.gameover if won == false
    draw
  end
end
