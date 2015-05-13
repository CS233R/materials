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
	
	```
	class Monkey < Monkey 
		It has the same name, so it shouldn't really work. 
	def init
		It should be def initalize
	"Om Om Om, oooh aaaah aaaah"
		It doesn't have puts in front of it. 
	my_vars = my_vars
		It doesn't say whether it's an instance, class or global variable.
	private
		It shouldn't be private but public since you're trying to get something from this method. 
	```

1. What is returned from the statement below?

	```ruby
	thoughts = Array.new(4, "Oh bugger, another test")

	thoughts[2]
	```
	
	```
	"Oh bugger
	```

1. What is the result of this `fetch`?

	```ruby
	my_hash = { my_key: 'value', another_key: 'another value' }
	my_hash.fetch(:not_a_key_yet, 'default value')  # => ??????
	```
	
	```
	value
	```

1. Give an example of a good variable name, and a bad variable name.
	```	
	good variable name = first_name
	bad variable name = 123name
	```

1. What is the difference between `1..10` and `1...10`?
	```
	The difference is that with 1..10 it puts nil or zero.
	With 1...10 it counts from 1 to 10.
	```

1. What is the result of running this method

	```ruby
	def ant_eater(ants)
	  ants -= 1
	end

	ant_eater
	```
	
	```
	The result is 0 or nil since you would be subtracting from 1.
	```

1. Name one thing you would fix with the arguments of this method. (see below)
	```
	I think I would change it from an if statement to a case statement.  
	```
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
	```
	10 > 8 && 8 < 10
	!false || !true
	```

1. What is the result of calling sort?

	```ruby
	["one fish", "two fish", "red fish", "blue fish"].sort
	```

	```
	["blue fish", "one fish", "red fish", "two fish"]
	```
1. Write a hash that has the following keys :name, :super_power, :weakness
	```
	my_hash = { :name, :super_power, :weakness }
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

	```
	my_hash = { "a", "b" }
	```
1. Write code that iterates through the numbers array and out`puts` the `KEY` for `each` of the values in the array.

	```ruby
	numbers = ['one', 'two', 'three']
	```
	
	```
	numbers = Numbers.new
	```
	
1. Write code that `maps` the fruits array to a new array where all the values are `reverse`d. Eg. "apples" = "selppa"

	```ruby
	fruits = [ "apples", "bananas", "carrots", "beets" ]
	```
	
	```
	fruits = [ "apples", "bananas", "carrots", "beets" ]
	fruits.reverse
	```

1. Which attr_xxxxx would you use in this example? (see below)
	```
	attr_reader
	```
1. What would change in the tame method? (see below)
	```
	#{@lions} to #{@angry_lions}
	```

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
	
	```
	my_hash.merge(other_hash) = { "another value I will overwrite or will I?" }
	```

1. What is the first thing you should do with `Legacy Code?`. And no, you can't throw it out.
	```
	The first thing that you should do with Legacy Code is to test it.
	```

1. Who is the creator of Ruby?
	```
	Matz or Yukihiro something
	````

1. Write a class that uses a Global, Instance, Class, and local variable. Don't worry about what it does, just properly use the variables.
	```
	class Frustration
	   $mood = mood
	   def initialize(first_name, last)
	      @first_name = first_name
	      @last = last
	      @@feeling = feeling
	      
	      puts "#{first_name} #{last} is #{@@feeling} #{$mood}.
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
	def eat
	   "bananas"
	end
	
	def drink
	    "water"
	end
	end
	```

1. What is the difference between using `extend` and `include`?
	```
	The difference between using extend and include is that
	with extend you want whatever you want extended as a part 
	of the section that you put the extend in, whereas with 
	include you put it in a different class and that class 
	will use the information from the class that is being 
	included as well as the information available from it's own class.
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
	case fruit == 'apple'
	  #eat
	when fruit == 'pear'
	  #eat
	when fruit == 'durian'
	  #no thanks
	else
	  #eat
	```
	
1.  T  /  F Arrays can only hold `String` and `Hash` values?
	```
	False
	```
1.  What is the scope resolution operator? 
	```
	The scope resolution operator is the ||
	```
1. T / F Ruby expects that you might pass a hash as the last argument to a method.
	```
	True
	```
1. Extra Credit: What is a Gem?
	```
	Not this midterm.
	```
