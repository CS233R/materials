#Code Warrior
Code warrior is an online ruby based game. 

#Instructions
Log into the website [https://www.bloc.io/ruby-warrior#/]()

Please record the code you write for submission on the due date.

You are challenged to beat level 4

#Due Date - April 14th 2015

Frank Kergil ruby warrior code

class Player
  def play_turn(warrior)
    if warrior.feel.empty? then
if (warrior.health==20) or (warrior.health<@health) then
warrior.walk!
else
warrior.rest!;
end 
else
warrior.attack!; 
end;
@health=warrior.health; 
end; 
end
