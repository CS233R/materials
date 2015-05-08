1. Circle all 5 of the problems with the code below.

	```ruby
	class Monkey < Monkey  > 1this would not work 
	  def init(my_vars)
	    my_vars = my_vars		>2should be	@my_vars = my_vars
	  end

	  private
	  def eat_banana
	    "Om Om Om, oooh aaaah aaaah"    > 3can't call outside class 
	  end
	end

	monkey = Monkey.new
	monkey.eat_banana  	>4can't call outside class with out it is in a private method need a seperate method first to call it within the class >5 should also be Monkey.eat_banana
	>need another method
	```

1. What is returned from the statement below?

	```ruby
	thoughts = Array.new(4, "Oh bugger, another test")

	thoughts[2]
	```
	>well since there isn't a 2 spot only a 0 and one i would assume it is nil

1. What is the result of this `fetch`?

	```ruby
	my_hash = { my_key: 'value', another_key: 'another value' }
	my_hash.fetch(:not_a_key_yet, 'default value')  # => ??????
	```
	>my_hash = { my_key: 'value', another_key: 'another value',not_a_key_yet: 'default value'}
	
1. Give an example of a good variable name, and a bad variable name.
this_is_a_good_name (maybe not that long but it is discriptive)
thisisabadbname (hard to read not good)
tbadname(bad)

1. What is the difference between `1..10` and `1...10`?
`1..10` returns 1-10

`1...10`returns 1-9



1. What is the result of running this method

	```ruby
	def ant_eater(ants)
	  ants -= 1
	end

	ant_eater
	```
	your not passing it a variable so nil or default value but i don't see how it would run 

1. Name one thing you would fix with the arguments of this method. (see below)
 i would change the if so that is is on one line since it is one else.

1. Now use the method to eat some humans! (see below)
	eat_humans(5, 2)
	
1. write down how many Humans did you eat? (see below)
		1

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
(true || true && false) true
(false && false || true) false

1. What is the result of calling sort?

	```ruby
	["one fish", "two fish", "red fish", "blue fish"].sort
	```
	"blue fish", "one fish", "red fish", "two fish"

1. Write a hash that has the following keys :name, :super_power, :weakness
hash.new{
name: "joe",
super_power: "mind control",
weakness: "hunger"
}

1. T/F You can set a default value for a Hash
true


1. What is the resulting hash?

	```ruby
	my_hash = { "a" => 100, "b" => 200, "c" => 300 }
	my_hash.select {|key,value| key < "c"}
	```
	a is less then c
	b is less then c
	c is not it is equal to 
	so the first two would be true and the last one i am always fuzy on but i believe it will be true as well

1. Write code that iterates through the numbers array and out`puts` the `KEY` for `each` of the values in the array.

	```ruby
	numbers = ['one', 'two', 'three']
	```
	numbers.each do {|"key", "value"| key}
	puts key

1. Write code that `maps` the fruits array to a new array where all the values are `reverse`d. Eg. "apples" = "selppa"

	```ruby
	fruits = [ "apples", "bananas", "carrots", "beets" ]
	```
	fruits.map[ "apples", "bananas", "carrots", "beets" ].reverse
	
1. Which attr_xxxxx would you use in this example? (see below)
	attr_assessor

1. What would change in the tame method? (see below)
I would do 
"A lion ate you" if @angry_lions else
"You just tamed #{@lions} lions, you badass"

1. Now go tame some lions, and don't get eaten! Use the class to invoke the `tame` method on an object instance. (see below)
	LionTamer.tame


	```ruby
	class LionTamer
	  # attr_xxxx :lions

	  def initialize(lions, angry_lions = 3)
	    @lions = lions
	    @angry_lions = angry_lions
	  end

	  def tame
	    unless v
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
	.gsub{/"z"/, "e"}
	
1. What is the resulting Hash. Please fully format the hash with proper `{}` and use `symbols`

	  ```ruby
	  my_hash = { my_key: 'value', another_key: 'another value' }
	  other_hash = { new_key: "new value", new_another: "I will overwrite or will I?"}
	  my_hash.merge(other_hash)
	```
	my_hash = { my_key: 'value', another_key: 'another value',  my_key: 'value', another_key: 'another value'}

1. What is the first thing you should do with `Legacy Code?`. And no, you can't throw it out.
HAHAHA 
Test it! :)

1. Who is the creator of Ruby?
Yokomoshu? Matz 

1. Write a class that uses a Global, Instance, Class, and local variable. Don't worry about what it does, just properly use the variables.
	class New_class
		@@global_class = 7
	    def the_method
		@instance_variable = 3
		local_variable =7
	    end
	end

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
	
	class Monkey < Animal
		puts eat
		puts drink
	end
	```

1. What is the difference between using `extend` and `include`?
	extended: it can extend a instance to anouther method this can overwrite 

	include: it can include a instance this does not over write the info

1. Convert this into a case statement

	```ruby
	case fruite
	when fruit == 'apple'
	  #eat
	when fruit == 'pear'
	  #eat
	when fruit == 'durian'
	  #no thanks
	else
	  #eat
	end
	```
	
1.  T  /  F Arrays can only hold `String` and `Hash` values? false.. .they can hold integers as well

1.  What is the scope resolution operator? 
	it will resolve issues in your class

1. T / F Ruby expects that you might pass a hash as the last argument to a method.
false

1. Extra Credit: What is a Gem?
	is a module that you add that allows you to do very specific things so i guess it is like a class you call that runs something so you don't have to program it yourself and you can use it if it is installed to call on that and do cool stuff.
