#Mid-Term : Ruby
##Gary McGinnis

1: Circle all 5 of the problems with the code below.

```lang-ruby
	**class Monkey < Monkey : Monkey Can't be child of Monkey **
  		def init(my_vars)
    			**my_vars = my_var : "Can't be the same name"**
  		end
	  	private
	  		def eat_banana
	   	**"Om Om Om, oooh aaaah aaaah" : "No puts and" **
	  end
	end

	monkey = Monkey.new
	**monkey.eat_banana : "Can't access private method in class"**
```



2: What is returned from the statement below?

```lang-ruby
	thoughts = Array.new(4, "Oh bugger, another test")

	thoughts[2]
```
	another

3: What is the result of this `fetch`?

```lang-ruby
	my_hash = { my_key: 'value', another_key: 'another value' }
	my_hash.fetch(:not_a_key_yet, 'default value')  # => ??????
```
```
	defualt Value
```
4: Give an example of a good variable name, and a bad variable name.

**variable_name** good
**vName** bad 





5: What is the difference between `1..10` and `1...10`?

```
1..10  is through and 1...10 is up to wright before.
```

****


6: What is the result of running this method

```lang-ruby
	def ant_eater(ants)
	  ants -= 1
	end

	ant_eater
```

	**You would get an error that you did not send a veariable over to the method**

7: Name one thing you would fix with the arguments of this method. (see below)
```
move ant_size to the end of the meathod beacuse is it optional
	
```

8: Now use the method to eat some humans! (see below)
```lang-ruby
	eat = eat_humans(12, 5)
```

9: write down how many Humans did you eat? (see below)

```lang-ruby
	def eat_humans(ant_size = 5, giant_ants)
	  if ant_size > 11
	    giant_ants**3 # Run for the hills
	  else
	    giant_ants % 2 # You small little guys have trouble taking anyone down.
	  end
	end
```

```
125
```
10: Demonstrate using multiple logical operators (||, &&)

```lang-ruby
	variable = true
	if variable == || variable == false && variable == True
		puts "always runs true becuase if the first part is true it does not go to the second part."
	end 
```


11: What is the result of calling sort?

```lang-ruby
	["one fish", "two fish", "red fish", "blue fish"].sort
```

```lang-ruby
**["blue fish" , "one fish" , "two fish"]**
```


12: Write a hash that has the following keys :name, :super_power, :weakness

```lang-ruby
hash = {:keys , :super_power, :weakness}
```

13: **T**/F You can set a default value for a Hash



14: What is the resulting hash?

```lang-ruby
	my_hash = { "a" => 100, "b" => 200, "c" => 300 }
	my_hash.select {|key,value| key < "c"}
```

```lang-ruby
	it selects "a" and "b"
```

15: Write code that iterates through the numbers array and out`puts` the `KEY` for `each` of the values in the array.

```lang-ruby
	numbers = ['one', 'two', 'three']
```

```lang-ruby
	puts numbers.map
```

16: Write code that `maps` the fruits array to a new array where all the values are `reverse`d. Eg. "apples" = "selppa"

```lang-ruby
	fruits = [ "apples", "bananas", "carrots", "beets" ]
```

```lang-ruby
	stiurf = []
	fruits.each do |fruit|
		stiurf = fruit.reverse
	end
```

17. Which attr_xxxxx would you use in this example? (see below)
```lang-ruby
	attr_read
```

18: What would change in the tame method? (see below)
```
	check to see if he tamed the lion or not insted of just 
	checking wheather or not the variable is true.
```

19: Now go tame some lions, and don't get eaten! Use the class to invoke the `tame` method on an object instance. (see below)

```lang-ruby
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

```lang-ruby
	lion = LionTamer.new("Ruben")
	
	lion.tame

```

20: I totally messed up my spelling, fix it using `gsub`

```lang-ruby
	"Always rzmzmbzr you arz absolutzly uniquz, likz zvzryonz zlsz"
```

21: What is the resulting Hash. Please fully format the hash with proper `{}` and use `symbols`

```lang-ruby
	  my_hash = { my_key: 'value', another_key: 'another value' }
	  other_hash = { new_key: "new value", new_another: "I will overwrite or will I?"}
	  my_hash.merge(other_hash)
```

```lang-ruby
	{my_key: 'value' , another_key: 'another value' ,  
	new_key: 'new value' , new_another: 'I will overwrite or will I' }
```


22: What is the first thing you should do with `Legacy Code?`. And no, you can't throw it out.

```
	Clean up the code
```

23: Who is the creator of Ruby?

```

```

24: Write a class that uses a Global, Instance, Class, and local variable. Don't worry about what it does, just properly use the variables.

```lang-ruby
	class
		$global
		@@class = somthing
		@instance = somthing
		def food = somthing
			local = somthing
			puts local
		end
	end
```

25: Write a Monkey class that `eat`s bananas, and `drink`s water

```lang-ruby
	class Animal
	  def eat
	    "Food is yummy"
	  end

	  def drink
	    "water"
	  end
	end
```

```lang-ruby
	class Monkey < Animal
		def eat 
			"Bannans are yummy."
		end
	end
```

26: What is the difference between using `extend` and `include`?

```
include is required where extend is optionsal.
```

27: Convert this into a case statement

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

```lang-ruby
	case fruit
		when 'apple'
			#eat
		when 'pear'
			#eat
		when durian
			#no thanks
		else
			#eat
	end
```
	
28:  **T**  /  F Arrays can only hold `String` and `Hash` values?

29:  What is the scope resolution operator? 

```
	
```

30: T / **F** Ruby expects that you might pass a hash as the last argument to a method.

31: Extra Credit: What is a Gem?

```
A gem is a collection of code that you can install and use in your program.
```
