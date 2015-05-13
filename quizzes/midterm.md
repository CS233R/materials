1. Circle all 5 of the problems with in code below.

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
	```
	#Cannot inherit from itself
	#Method must be called initialize
	#my_vars should be equal to @my_vars
	#Cannot call private method/Method should be public
	```

1. What is returned from the statement below?

	```ruby
	thoughts = Array.new(4, "Oh bugger, another test")

	thoughts[2]
	```
	```
	#index access error
	```

1. What is the result of this `fetch`?

	```ruby
	my_hash = { my_key: 'value', another_key: 'another value' }
	my_hash.fetch(:not_a_key_yet, 'default value')  # => ??????
	```
	```
	#default value
	```

1. Give an example of a good variable name, and a bad variable name.
	```
	this_is_a_variable #Good
	whatTheh3llAMi #Bad
	```

1. What is the difference between `1..10` and `1...10`?
	```
	#Two dots is not inclusive of the final value in the range, while three dots is
	```

1. What is the result of running this method

	```ruby
	def ant_eater(ants)
	  ants -= 1
	end

	ant_eater
	```
	```
	#ants is now equal to one less than it was before the method was called.
	```

1. Name one thing you would fix with the arguments of this method. (see below)
	```
	#I would reverse the order of the parameters, as the default looks better on the right...
	```
1. Now use the method to eat some humans! (see below)
	```
	eat_humans(12, 3)
	```
1. write down how many Humans did you eat? (see below)
	```
	#3
	```

	```ruby
	def eat_humans(ant_size = 5, giant_ants)
	  if (ant_size > 11)
	    giant_ants**3 # Run for the hills
	  else
	    giant_ants % 2 # You small little guys have trouble taking anyone down.
	  end
	end
	```

1. Demonstrate using multiple logical operators (||, &&)
	```ruby
	if (1 > 2 || 5 > 3 && true)
		doThis
	end
	```

1. What is the result of calling sort?

	```ruby
	["one fish", "two fish", "red fish", "blue fish"].sort
	```
	```ruby
	#returns ["blue fish", "one fish", "red fish", [two fish"]
	```

1. Write a hash that has the following keys :name, :super_power, :weakness
	```ruby
	{name: "Superman", super_power: "Being super", weakness: "Kryptonite"}
	```

1. T/F You can set a default value for a Hash
	```
	True
	```


1. What is the resulting hash?

	```ruby
	my_hash = { "a" => 100, "b" => 200, "c" => 300 }
	my_hash.select {|key,value| key < "c"}
	```
	```ruby
	{"a" => 100, "b" => 200}
	```

1. Write code that iterates through the numbers array and out`puts` the `KEY` for `each` of the values in the array.

	```ruby
	numbers = ['one', 'two', 'three']
	```
	```ruby
	numbers.print_each_key do
		puts numbers
	end
	```

1. Write code that `maps` the fruits array to a new array where all the values are `reverse`d. Eg. "apples" = "selppa"

	```ruby
	fruits = [ "apples", "bananas", "carrots", "beets" ]
	```
	```ruby
	fruits.map {|x| x.reverse!}
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
	```ruby
	"Always rzmzmbzr you arz absolutzly uniquz, likz zvzryonz zlsz".gsub("z", "e") #Idk...
	```

1. What is the resulting Hash. Please fully format the hash with proper `{}` and use `symbols`

	  ```ruby
	  my_hash = { my_key: 'value', another_key: 'another value' }
	  other_hash = { new_key: "new value", new_another: "I will overwrite or will I?"}
	  my_hash.merge(other_hash)
	```
	```ruby
	{my_key: 'value', another_key: 'another value', new_key: "new value", new_another: "I will overwrite or will I?"}
	```

1. What is the first thing you should do with `Legacy Code?`. And no, you can't throw it out.
	```
	#Figure out what it does/what its supposed to do.
	```

1. Who is the creator of Ruby?
	```
	#Some japanese dude that has the nickname Matz
	```

1. Write a class that uses a Global, Instance, Class, and local variable. Don't worry about what it does, just properly use the variables.
	```ruby
	class midterm
		$why_you_do_dis #Global
		@@no_tests_plz #Class
		initialize(butthead)
			@butthead = butthead #Instance and local
		end
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
	```ruby
	class Monkey < Animal
	  def eat_banana
	    "Om Om Om, oooh aaaah aaaah"
	  end
	end
	```

1. What is the difference between using `extend` and `include`?
	```ruby
	#Extend includes the code at the class level while inlcude does in at instance level
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
	```ruby
	case fruit
	  when "durrian"
	    #no thanks
	  else
	    #eat
	end
	```
	
1.  T  /  F Arrays can only hold `String` and `Hash` values?
	```
	#False
	```

1.  What is the scope resolution operator?
	```
	#::
	```

1. T / F Ruby expects that you might pass a hash as the last argument to a method.
	```
	#True
	```

1. Extra Credit: What is a Gem?
	```
	#Its an addon or package for the ruby/ruby on rails language
	```
