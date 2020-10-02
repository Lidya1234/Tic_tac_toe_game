$array =['', '', '','','','','','']
class Game
    
    WINNERS_SET = [
           [1,2,3],
           [4,5,6],
           [7,8,9],
           [1,4,7],
           [2,5,8],
           [3,6,9],
           [1,5,9],
           [3,5,7],
].freeze


def initialize(player1 ,player2)
    @player1 =player1
    @player2 =player2
    @board_array =['', '', '','','','','','',''] 
    @filledpos_player1 =[]
    @filledpos_player2 =[]
   
  
end
 def validatename
   return false if @player.nil? && @player1 !=@player2
   return true
end
def validatesign
return false if @sign.nil? 
true
end

def board
    puts "#{@board_array[0]} | #{@board_array[1]}| #{@board_array[2]}"
    puts '__+__+__'
    puts "#{@board_array[3]} | #{@board_array[4]}| #{@board_array[5]}"
    puts '__+__+__'
    puts "#{@board_array[6]} | #{@board_array[7]}| #{@board_array[8]}"
  end
def movement(position)
if position.between?(1,9) && @board_array[position]==''
  
  @board_array[position] = 'y'
  #@filledpositions << position
   
   else
     return 'Invalid position'
    end
   @board_array
end
def winner
  puts  @filledpositions
WINNERS_SET.each{|x| return true if x.all?( @filledpositions)}
 false
end
 def boardisfull?
    available_moves=[]
     @board_array.each{|x| if x == ''
     available_moves << x 
      return false
      end  }
     true   
 end
 def playgame
 until boardisfull?
turn =1
    if turn.odd?
  
      choice = move
      puts "#{player1} you chose #{choice} "
     @board_array[choice] == @player1.@sign
      board
      if winner
        puts "Winner #{player1}"
        break
      end
  
    else

      choice = move
      puts "#{@player2} you chose #{choice} "
      @board_array[choice] == @player1.@sign
      board
      if winner
        @player2
        break
      end
  
    end
    turn += 1

  end
end
  
end

 
