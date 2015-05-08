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
	-You can't call Monkey to itself for inheriting
	-my_vars is not called as a specific type of variable
	-the first class needs to be called animal then there needs to be another class called Monkey that inherits
	from the animal class
	-the private method does not car the variable
	```

1. What is returned from the statement below?

	```ruby
	thoughts = Array.new(4, "Oh bugger, another test")

	thoughts[2]
	```
```
"Oh"
```
1. What is the result of this `fetch`?

	```ruby
	my_hash = { my_key: 'value', another_key: 'another value' }
	my_hash.fetch(:not_a_key_yet, 'default value')  # => ??????
	```
```
'default value'
```

1. Give an example of a good variable name, and a bad variable name.
```
Good: needed_variable  Bad: 3_needed_variables
```




1. What is the difference between `1..10` and `1...10`?
```
1..10 is inclusive and includes all the values between 1 and 10, 1...10 includes all the values except for 10
```

1. What is the result of running this method

	```ruby
	def ant_eater(ants)
	  ants -= 1
	end

	ant_eater
	```

1. Name one thing you would fix with the arguments of this method. (see below)
 ```
 I would add a class that would be able to utilize the method
 ```
1. Now use the method to eat some humans! (see below)
```

```
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
if (true && true)
#some coding
end
=> code will run

if (true || true)
#some coding
end
=> code will run

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
my_hash = { name: "Green Lantern", super_power: "Manipulate light", weakness: "Yellow"  }
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
	{ nil }
	```

1. Write code that iterates through the numbers array and out`puts` the `KEY` for `each` of the values in the array.

	```ruby
	numbers = ['one', 'two', 'three']
	```
	
	```
	def init
	  puts "numbers"
	end
	```

1. Write code that `maps` the fruits array to a new array where all the values are `reverse`d. Eg. "apples" = "selppa"

	```ruby
	fruits = [ "apples", "bananas", "carrots", "beets" ]
	```
	```
	fruits.map { |fruits| fruits.reverse } 
	```

1. Which attr_xxxxx would you use in this example? (see below)
```
attr_accessor
```
1. What would change in the tame method? (see below)
```
I would add one more end to close out the tame method
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
```
tamer = LionTamer.new
tamer = LionTamer.tame
```

1. I totally messed up my spelling, fix it using `gsub`

	```ruby
	"Always rzmzmbzr you arz absolutzly uniquz, likz zvzryonz zlsz"
	```

```
"Always rzmzmbzr you arz absolutzly uniquz, likz zvzryonz zlsz".gsub([z], 'e')
```
1. What is the resulting Hash. Please fully format the hash with proper `{}` and use `symbols`

	  ```ruby
	  my_hash = { my_key: 'value', another_key: 'another value' }
	  other_hash = { new_key: "new value", new_another: "I will overwrite or will I?"}
	  my_hash.merge(other_hash)
	```
```
{ my_key=> "value", another_key=>: "another value", new_key=> "new value", new_another=> "I will overwrite or will I?" }
```

1. What is the first thing you should do with `Legacy Code?`. And no, you can't throw it out.
```
Isolate parts of the code to see what parts of it are depreciated
```

1. Who is the creator of Ruby?
```
"Matz"
```

1. Write a class that uses a Global, Instance, Class, and local variable. Don't worry about what it does, just properly use the variables.
```
class Food
	def eat(protein, fruit, veg, dairy)
		@protein = protein
		@@fruit = fruit
		$veg = veg
		_dairy = dairy
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
	
	```
	class Monkey < Animal
      	end
      	
      	bubbles = Monkey.new
      	bubbles = Monkey.eat
      	bubbles = Monkey.drink
      	
      	
	```

1. What is the difference between using `extend` and `include`?
```
You would use include for instance methods and extend for class methods
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
	
	```
	case fruit
	  when "apple", "pear"
	    puts 'eat'
	  when "durian"
	    puts 'no thanks!'
	  else
	    puts 'eat'
	end
		
	```
	
1.  T  /  F Arrays can only hold `String` and `Hash` values?
```
False
```

1.  What is the scope resolution operator? 
```
::
```

1. T / F Ruby expects that you might pass a hash as the last argument to a method.
```
True
```

1. Extra Credit: What is a Gem?
