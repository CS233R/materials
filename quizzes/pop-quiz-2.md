1. How do you define a class?
	class Food

	end

2. How does `.new` relate to `initialize` method do?
	Every time you use new it calls initialize method.

3. Does this inheritance make sense?

  ```lang-ruby
  class Frog
    #code that makes frogs go hop hop hop
  end
  
  class Animal < Frog
    #code that makes animals live
  class
  ```
	not it does not frog should be the child of animal not the other way around.

4. Define a instance variables in code
	@name = name

5. Define a class variable in code
	@@dog = dog

6. Define a global variable in code

7. T/<b>F</b> the `eat` method is private

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

8.  Define a attr_reader in code, and what does it do?
	attr_reader name 
	It makes it so you can read a variable but can't change it 	outside fo the 	class.
9.  Define a attr_accessor in code, and what does it do?
	attr_accessor dog
	It makes it so you can read and write to the variable outside of the class

10.  How would you instantiate this class?

  ```ruby
  class Dog
    def initialize(name, breed)
      puts "#{name} is a #{breed}"
    end
  end
  

dog = Dog.new
```
