#!/usr/bin/env ruby


puts "Enter name of player1 "
valid=true
loop do

player1=gets.chomp

break if valid ==true
puts "enter valid name"
 end
puts "Enter name of player2"
loop do

player2=gets.chomp
break if valid ==true
puts "enter valid name"
end

boardisfull=false
choicevalid=true
until boardisfull do
 puts "Enter choice of player 1"
 loop do

 choice=gets.chomp.to_i
break if choicevalid ==true
 end
 puts "Enter choice of player2"
 loop do

 choice=gets.chomp.to_i
break if choicevalid ==true
 end
 boardisfull=true
end