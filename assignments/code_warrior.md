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

*Ashley Rice*
```ruby
# Code through Level 4

def play_turn(warrior)
    warrior.walk!
  end
  
  def play_turn(warrior)
    warrior.feel
    
    if warrior.feel.empty? == true
      warrior.walk!
    else
      warrior.attack!
    end
  end
  
  warrior.health  
    warrior.feel
 
    if warrior.feel.empty? == false
        warrior.attack!
    else
      if warrior.health == 20
        warrior.walk!
      else
          warrior.rest!
      end
    end
    
     def play_turn(warrior)
 
    @max_health = 20
    if @health == nil then @health = @max_health end
 
    is_taking_damage?(warrior)
    actions(warrior)
    record_health(warrior)
 
  end
 
  def is_taking_damage?(warrior)
    @under_attack = @health > warrior.health
  end
 
  def actions(warrior)
    if @under_attack == true and warrior.feel.empty? == true
      warrior.walk!
    elsif @under_attack == true and warrior.feel.empty? == false
      warrior.attack!
    elsif @under_attack == false and warrior.feel.empty? == true and warrior.health == @max_health
      warrior.walk!
    elsif @under_attack == false and warrior.feel.empty? == false and warrior.health == @max_health
      warrior.attack!
    elsif @under_attack == false and warrior.health < @max_health
      warrior.rest!
    end
  end
 
  def record_health(warrior)
    @health = warrior.health
  end
  ```
