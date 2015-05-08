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

1. What is returned from the statement below?

	```ruby
	thoughts = Array.new(4, "Oh bugger, another test")

	thoughts[2]
	```

1. What is the result of this `fetch`?

	```ruby
	my_hash = { my_key: 'value', another_key: 'another value' }
	my_hash.fetch(:not_a_key_yet, 'default value')  # => ??????
	```

1. Give an example of a good variable name, and a bad variable name.





1. What is the difference between `1..10` and `1...10`?




1. What is the result of running this method

	```ruby
	def ant_eater(ants)
	  ants -= 1
	end

	ant_eater
	```

1. Name one thing you would fix with the arguments of this method. (see below)
1. Now use the method to eat some humans! (see below)
1. write down how many Humans did you eat? (see below)

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


1. What is the result of calling sort?

	```ruby
	["one fish", "two fish", "red fish", "blue fish"].sort
	```


1. Write a hash that has the following keys :name, :super_power, :weakness


1. T/F You can set a default value for a Hash



1. What is the resulting hash?

	```ruby
	my_hash = { "a" => 100, "b" => 200, "c" => 300 }
	my_hash.select {|key,value| key < "c"}
	```

1. Write code that iterates through the numbers array and out`puts` the `KEY` for `each` of the values in the array.

	```ruby
	numbers = ['one', 'two', 'three']
	```

1. Write code that `maps` the fruits array to a new array where all the values are `reverse`d. Eg. "apples" = "selppa"

	```ruby
	fruits = [ "apples", "bananas", "carrots", "beets" ]
	```

1. Which attr_xxxxx would you use in this example? (see below)

1. What would change in the tame method? (see below)

1. Now go tame some lions, and don't get eaten! Use the class to invoke the `tame` method on an object instance. (see below)

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

1. What is the resulting Hash. Please fully format the hash with proper `{}` and use `symbols`

	  ```ruby
	  my_hash = { my_key: 'value', another_key: 'another value' }
	  other_hash = { new_key: "new value", new_another: "I will overwrite or will I?"}
	  my_hash.merge(other_hash)
	```


1. What is the first thing you should do with `Legacy Code?`. And no, you can't throw it out.

1. Who is the creator of Ruby?

1. Write a class that uses a Global, Instance, Class, and local variable. Don't worry about what it does, just properly use the variables.

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

1. What is the difference between using `extend` and `include`?

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
	
1.  T  /  F Arrays can only hold `String` and `Hash` values?

1.  What is the scope resolution operator? 

1. T / F Ruby expects that you might pass a hash as the last argument to a method.

1. Extra Credit: What is a Gem?
