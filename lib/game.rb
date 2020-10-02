
require_relative 'player.rb'
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
  
    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
     @board_array = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
      @filledpos_player1 = []
      @filledpos_player2 = []
    end
  
   
  
    
    def board
      puts "#{@board_array[0]} | #{@board_array[1]}| #{@board_array[2]}"
      puts puts '__|__|__'
      puts "#{@board_array[3]} | #{@board_array[4]}| #{@board_array[5]}"
      puts puts '__|__|__'
      puts "#{@board_array[6]} | #{@board_array[7]}| #{@board_array[8]}"
    end
  
  
    def movement(position)
      return 'Invalid position' unless position.between?(1, 9) && @board_array[position] == ''
  
      @board_array[position] = 'y'
      @board_array
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
      @board_array = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end
  
    def boardisfull?
      available_moves = []
      @board_array.each do |x|
        if x == ''
          available_moves << x
          return false
        end
      end
      true
    end
   def move
    choicevalid = true
    choice = ''
    puts "Enter your choice here"
    loop do
      choice = gets.chomp.to_i
  
      break if choicevalid == true
  
      puts 'Invalid move'
    end
    choice
  end
    def playgame
      puts "hello"
      until boardisfull?
        puts "hi"
        turn = 1
        if turn.odd?
  
          choice = move
      
          @board_array[choice] == @player1.sign
          startgame.movement(choice)
          board
          if winner?(@player1)
            @player1
            break
          end
  
        else
  
          choice = move
      
          @board_array[choice] == @player1.sign
          startgame.movement(choice)
          board
          if winner?(@player2)
            @player2
            break
          end
  
        end
        turn += 1
        draw
        board
      end
    end
  end