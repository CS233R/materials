1. Circle all 5 of the problems with the code below.

	```ruby
	class Monkey < Monkey 
	  def init(my_vars)
	    my_vars = my_vars
	  end

	  private
	  def eat_banana
	    "Om Om Om, oooh aaaah aaaah"
	  end
	end

	monkey = Monkey.new
	monkey.eat_banana
	```
	```answer
	Answer:
	1. Class Monkey is inheriting from itself, not another class
	2. The init method should be named initialize
	3. my_vars in the init method should be an instance variable @my_vars = my_vars
	4. Neither method from class Monkey is being called
	5. monkey.eat_banana cannot be invoked because it's private
	```

1. What is returned from the statement below?

	```ruby
	thoughts = Array.new(4, "Oh bugger, another test")

	thoughts[2]
	```
	```answer
	Answer:
	Nil, there are only two elements in the array. Since there is an index of zero
	thoughts[2] is referencing the third element, which does not exist.
	```

1. What is the result of this `fetch`?

	```ruby
	my_hash = { my_key: 'value', another_key: 'another value' }
	my_hash.fetch(:not_a_key_yet, 'default value')  # => ??????
	```
	```answer
	Answer:
	Nil, that key and value does not exist.
	```

1. Give an example of a good variable name, and a bad variable name.
	```answer
	Answer:
	Good variable name:    my_variable_name
	Bad variable name:     BadVariableName
	Variables should be all lowercase using underscores, and not begin 
	with a number or special character.
	```

1. What is the difference between `1..10` and `1...10`?
	```answer
	Answer:
	1..10 is inclusive, meaning that it will include 10
	1...10 is exclusive, meaning that it will stop at 9
	```

1. What is the result of running this method

	```ruby
	def ant_eater(ants)
	  ants -= 1
	end

	ant_eater
	```
	
	```answer
	Answer:
	Nothing, because no paramater was passed in to the method.
	```

1. Name one thing you would fix with the arguments of this method. (see below)
	```answer
	Answer:
	I don't know
	```
1. Now use the method to eat some humans! (see below)
	```answer
	Answer:
	eat_humans(12, 4)
	```
1. write down how many Humans did you eat? (see below)
	```answer
	Answer:
	64
	```

	```ruby
	def eat_humans(ant_size = 5, giant_ants)
	  if ant_size > 11
	    giant_ants**3 # Run for the hills
	  else
	    giant_ants % 2 # You small little guys have trouble taking anyone down.
	  end
	end
	```


1. Demonstrate using multiple logical operators (||, &&)
	```answer
	Answer:
	if (x == 12 || x == 7 && y == 15)
	```

1. What is the result of calling sort?

	```ruby
	["one fish", "two fish", "red fish", "blue fish"].sort
	```
	```answer
	Answer:
	["blue fish", "one fish", "red fish", "two fish"]
	```


1. Write a hash that has the following keys :name, :super_power, :weakness
	```answer
	Answer:
	super_hero = { name: 'Superman', super_power: 'Everything', weakness: 'Kryptonite' }
	```

1. T/F You can set a default value for a Hash
	```answer
	Answer:
	True
	```


1. What is the resulting hash?

	```ruby
	my_hash = { "a" => 100, "b" => 200, "c" => 300 }
	my_hash.select {|key,value| key < "c"}
	```
	```answer
	Answer:
	[ "a", "b" ]
	```

1. Write code that iterates through the numbers array and out`puts` the `KEY` for `each` of the values in the array.

	```ruby
	numbers = ['one', 'two', 'three']
	```
	```answer
	Answer:
	numbers.each do |KEY| puts KEY
	```

1. Write code that `maps` the fruits array to a new array where all the values are `reverse`d. Eg. "apples" = "selppa"

	```ruby
	fruits = [ "apples", "bananas", "carrots", "beets" ]
	```
	```answer
	Answer:
	fruits.maps.reverse
	```

1. Which attr_xxxxx would you use in this example? (see below)
	```answer
	Answer:
	attr_accessor: lions
	```

1. What would change in the tame method? (see below)
	```answer
	Answer:
	I don't know
	```

1. Now go tame some lions, and don't get eaten! Use the class to invoke the `tame` method on an object instance. (see below)
	```answer
	Answer:
	tamer_name = LionTamer.new
	tamer_name.tame
	```
	
	```ruby
	class LionTamer
	  # attr_xxxx :lions

	  def initialize(lions, angry_lions = 3)
	    @lions = lions
	    @angry_lions = angry_lions
	  end

	  def tame
	    unless @angry_lions
	      "You just tamed #{@lions} lions, you badass"
	    else
	      "A lion ate you"
	    end
	  end
	end
	```


1. I totally messed up my spelling, fix it using `gsub`

	```ruby
	"Always rzmzmbzr you arz absolutzly uniquz, likz zvzryonz zlsz"
	```
	```answer
	Answer:
	.gsub(/z/, e)
	```

1. What is the resulting Hash. Please fully format the hash with proper `{}` and use `symbols`

	  ```ruby
	  my_hash = { my_key: 'value', another_key: 'another value' }
	  other_hash = { new_key: "new value", new_another: "I will overwrite or will I?"}
	  my_hash.merge(other_hash)
	```
	```answer
	Answer:
	my_hash = { my_key: 'value', another_key: 'another value', 
		new_key: "new value", new_another: "I will overwrite or will I?" }
	```

1. What is the first thing you should do with `Legacy Code?`. And no, you can't throw it out.
	```answer
	Answer:
	Begin testing the code and then refactoring
	```
1. Who is the creator of Ruby?
	```answer
	Answer:
	Yukihiro Matsumoto aka Matz
	```

1. Write a class that uses a Global, Instance, Class, and local variable. Don't worry about what it does, just properly use the variables.
	```answer
	Answer:
	class Variables
	  $global_variable = "Ruby"
	  @instance_variable = "Is"
	  @@class_variable = "The"
	  local_variable = "Best!"
	end
	```
	
1. Write a Monkey class that `eat`s bananas, and `drink`s water

	```ruby
	class Animal
	  def eat
	    "Food is yummy"
	  end

	  def drink
	    "water"
	  end
	end
	```
	
	```answer
	Answer:
	class Monkey < Animal
	  def eat
	    "Bananas are yummy"
	  end
	end
	```

1. What is the difference between using `extend` and `include`?
	```answer
	Answer:
	Extend is used on classes, include is used on
	```
	
1. Convert this into a case statement

	```ruby
	if fruit == 'apple'
	  #eat
	elsif fruit == 'pear'
	  #eat
	elsif fruit == 'durian'
	  #no thanks
	else
	  #eat
	```
	
	```answer
	Answer:
	case fruit
	  apple #eat
	  pear #eat
	  durian #no thanks
	end
	```
	
1.  T  /  F Arrays can only hold `String` and `Hash` values?
	```answer
	Answer:
	False
	```
	
1.  What is the scope resolution operator? 
	```answer
	Answer:
	I don't know
	```
	
1. T / F Ruby expects that you might pass a hash as the last argument to a method.
	```answer
	Answer:
	True
	```
	
1. Extra Credit: What is a Gem?
	```answer
	Answer:
	A gem is a downloadable package for Ruby on Rails
	```
