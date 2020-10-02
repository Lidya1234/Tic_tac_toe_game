class Game
    attr_accessor  :array
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
$array=['' ,'','']
def initialize(player ,sign)
    @player=player
    @sign =sign
    @filledpositions=[]
end
 def validatename
   return false if @player.nil?
   return true
end
def validatesign
return false if @sign.nil?
true
end
def movement(position)
 puts "abc"
    if $array[position].nil?
  $array[position] = @sign 
    @filledpositions << position
   else
     return 'Invalid position'
    end
end
def winner
  
WINNERS_SET.each{|x| return true if x.all?( @filledpositions)}
 false
end
 def boardfull
    available_moves=[]
    array.each{|x| if x == ''
     available_moves << x 
      return false
      end  }
     true   
 end
end
player1 =Game.new('lidu ' , 'x')
player2 =Game.new(nil , nil)
puts player1.validatename
puts player2.validatename
puts player2.validatesign
player1.movement(1)
