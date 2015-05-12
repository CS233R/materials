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
	
	> 1. the init method should be named initialize
	> 1. my_vars on the left of the assignment within initialize should be an instance var
	> 1. calling Monkey.new needs to be passed parameters so if there are no defaults set
	> 1. eat_banana method cannot be called cause it is a private method
	> 1. the inheritance for Monkey cannot come from Monkey cause it is the same name

1. What is returned from the statement below?

	```ruby
	thoughts = Array.new(4, "Oh bugger, another test")

	thoughts[2]
	```
	
	> The result will throw an error because it is an undefined offset index for the array

1. What is the result of this `fetch`?

	```ruby
	my_hash = { my_key: 'value', another_key: 'another value' }
	my_hash.fetch(:not_a_key_yet, 'default value')  # => ??????
	```
	> => 'default value'
1. Give an example of a good variable name, and a bad variable name.

	> ``good_variable = "jules"``, ``Vary-Bad-varialbe = "jules"``





1. What is the difference between `1..10` and `1...10`?


	> 1..10 is inclusive
	> 1...10 is exclusive
	> if printed out in a loop 1..10 would print 1-10 and 1...10 would print 1-9


1. What is the result of running this method

	```ruby
	def ant_eater(ants)
	  ants -= 1
	end

	ant_eater
	```
	
	> it will return 1 less then the value passed in as an argument. If no argument it will throw an error

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
	
	> 7 Place the argument that has a default after the arg that doesn't<br>
	> 8 Presuming that the above fix was made ``eat_humans(4, 15)``<br>
	> 9 giant_ants would equal 3,375 but I have no idea the ratio of ants to humans


1. Demonstrate using multiple logical operators (||, &&)

	> ``if name && name.length > 15 || name == "Jules" || name == "Sean"``
	> <br>note that if name is nil or not set it won't test anything else


1. What is the result of calling sort?

	```ruby
	["one fish", "two fish", "red fish", "blue fish"].sort
	```
	
	> ``=> ["blue fish", "one fish", "red fish", "two fish"]`` not destructive cause ! was not used


1. Write a hash that has the following keys :name, :super_power, :weakness

	> {name: "Jules", super_power: "Coding", weakness: "Happiness"}


1. **T**/F You can set a default value for a Hash



1. What is the resulting hash?

	```ruby
	my_hash = { "a" => 100, "b" => 200, "c" => 300 }
	my_hash.select {|key,value| key < "c"}
	```
	
	> {"a" => 100, "b" => 200}

1. Write code that iterates through the numbers array and out`puts` the `KEY` for `each` of the values in the array.

	```ruby
	numbers = ['one', 'two', 'three']
	```
		
	> ```ruby
	> numbers.each { |key, val| puts key }
	> ```	

1. Write code that `maps` the fruits array to a new array where all the values are `reverse`d. Eg. "apples" = "selppa"

	```ruby
	fruits = [ "apples", "bananas", "carrots", "beets" ]
	```
		
	> ```ruby
	> fruits.map! { |fruit| fruit.reverse }
	> ```	

1. Which attr_xxxxx would you use in this example? (see below)

	> `attr_reader` cause the values are being set with parameters passed in

1. What would change in the tame method? (see below)

	> Change the unless structure to a ternary operator i.e<br>
	> ``!@angry_lions ? "You just tamed #{@lions} lions, you badass" : "A lion ate you"``

1. Now go tame some lions, and don't get eaten! Use the class to invoke the `tame` method on an object instance. (see below)

	> ```ruby
	> tamer = LionTamer.new(10, 1)
	> tamer.tame
	> ```

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
		
	> ``above_string.gsub!("z", "e")``	

1. What is the resulting Hash. Please fully format the hash with proper `{}` and use `symbols`

	  ```ruby
	   my_hash = { my_key: 'value', another_key: 'another value' }
	   other_hash = { new_key: "new value", new_another: "I will overwrite or will I?"}
	   my_hash.merge(other_hash)
	  ```
	  
	> ``=> {my_key: 'value', another_key: 'another value', new_another: 'I will overwrite or will I?'}``


1. What is the first thing you should do with `Legacy Code?`. And no, you can't throw it out.

	> write a characterization test to see what you are working with

1. Who is the creator of Ruby?

	> Matzubishi Yakamoto<br>
	> Otherwise referred to as 'Matz'
	> which is justified based on the spelling for america

	
1. Write a class that uses a Global, Instance, Class, and local variable. Don't worry about what it does, just properly use the variables.

	```ruby
	class MyClass
		@@count = 0
		
		def initialize(name)
			@@count += 1
			@name = name
		end
		
		$some_var_of_mine = "A random string"
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
	
	> ```ruby
	> class Monkey < Animal
	> 	def eat
	> 		"Bananas #{super}"
	> 	end
	> end
	> ```

1. What is the difference between using `extend` and `include`?

	> Extend takes the methods from a module and applies them as class level methods<br>
	> Include takes the methods from a module and applies them as instance methods

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
	
	> ```ruby
	> case fruit
	> when 'apple'
	> 	#eat
	> when 'pear'
	> 	#eat
	> when 'durian'
	> 	#eat
	> else
	> 	#eat
	> end
	> ```
	
1.  T  /  **F** Arrays can only hold `String` and `Hash` values?

1.  What is the scope resolution operator?

	> A scope resolution operator is defined by placing :: in between the Module that you have namespaced and the class that you are creating an instance of. This prevents pollution of the global namespace

1. **T** / F Ruby expects that you might pass a hash as the last argument to a method.

1. Extra Credit: What is a Gem?

	> A gem is a prewritten set of classes, methods, modules, and other code that can be included in your project or your class to be utilized as needed.
