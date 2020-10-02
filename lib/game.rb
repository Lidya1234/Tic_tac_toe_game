class Game
    attr_accessor : array
    WINNERS_SET={
           [1,2,3],
           [4,5,6],
           [7,8,9],
           [1,4,7],
           [2,5,8],
           [3,6,9],
           [1,5,9],
           [3,5,7],
    }.freeze
def initialize(player ,sign)
    @player=player
    @sign =sign
end
 def validatename(name)
   return false if name.nil?
   return true
end
def validatesign(sign)
return false if sign.nil?
end
def movement(player ,position)
 
    if array[position] == ''
    array[position] = @sign 
    player1 << position if player == player1
    player2 << position

    else
     return 'Invalid position'
    end
end
