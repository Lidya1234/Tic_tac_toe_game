class Player
  attr_accessor :playername 
  attr_reader :sign
  def initialize(player, sign)
    @player = player
    @sign = sign
  end
end
