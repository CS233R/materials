1. How do you define a class?

	```ruby
	class MyClass; end
	```

2. How does `.new` relate to `initialize` method do?

	>When .new is called on a class it creates a new instance of the class. When the instance is created it looks within the class for an initialize method. This method can be used to create initial values for the class.

3. Does this inheritance make sense?
  
	```ruby
	class Frog
		#code that frogs go hop hop hop
	end
	class Animal < Frog
		#code that makes animals live
	end
	```
	
	> No this inheritance does not make sense because a frog is a type of animal but an animal is not a type of frog

4. Define a instance variables in code

	```ruby
	@my_name = "Jules"
	```

5. Define a class variable in code

	```ruby
	@@my_class_name = "Super Awesome Person"
	```

6. Define a global variable in code

	```ruby
	$my_global_name = "Julian Rogmans"
	```

7. T/F the `eat` method is private

  
	```ruby
	class Worm
		@@dirt_count = 20
		def eat
			dirt
			puts @@dirt_count
		end
		private  
	    	def dirt
	      		@@dirt_count -= 1
	      	end
	end
	```
	
	> The answer is False: the eat method is not private

8.  Define a attr_reader in code, and what does it do?

	```ruby
	attr_reader :name
	```
	> This will automatically create a getter method for the name instance variable of the class. `attr_reader` will not create a setter method

9.  Define a attr_accessor in code, and what does it do?

	```ruby
	attr_accessor :name
	```
	> This will automatically create a getter AND setter methods for the name instance variable of the class. `attr_accessor` a method to set the name instance var and then to read the value as well

10.  How would you instantiate this class?

	  ```ruby
	  class Dog
	    def initialize(name, breed)
	      puts "#{name} is a #{breed}"
	    end
	  end
	  ```
	  
	```ruby
	my_dog = Dog.new("Arlo", "Black Lab")
	```
