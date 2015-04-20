#Code Warrior
Code warrior is an online ruby based game. 

#Instructions
Log into the website [https://www.bloc.io/ruby-warrior#/]()

Please record the code you write for submission on the due date.

You are challenged to beat level 4

#Due Date - April 14th 2015

Frank Kergil ruby warrior code
```
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
```

*Ted Hendricks*
``` Code
#Ruby Warrior code through level 5

class Player
  def taking_damage?(warrior)
    warrior.health < @health
  end
  
  def play_turn(warrior)
    if warrior.health < 20 && !taking_damage?(warrior)
      warrior.rest!
    elsif warrior.feel.captive?
        warrior.rescue!
      elsif warrior.feel.enemy?
          warrior.attack!
        else
          warrior.walk!
    end
    @health = warrior.health
  end
end
```
