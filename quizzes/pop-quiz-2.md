1. How do you define a class?
  class MyClass

2. How does `.new` relate to `initialize` method do?
  .new signals for the initialize function to fire off.

3. Does this inheritance make sense?
  NO. Then all animals would hop, but not all frogs would live...

  ```lang-ruby
  class Frog
    #code that makes frogs go hop hop hop
  end
  
  class Animal < Frog
    #code that makes animals live
  class
  ```

4. Define a instance variables in code
  ```ruby
    @instance_variable
  ```

5. Define a class variable in code
  ```ruby
    @@class_variable
  ```

6. Define a global variable in code
  ```ruby
    $global_variable
  ```

7. T/F the `eat` method is private
  false. public is default.

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
  It allows you to access class variables from outside the class.
  
9.  Define a attr_accessor in code, and what does it do?
  The accessor is a combination on the reader and the writer.

10.  How would you instantiate this class?
  my_dog = Dog.new("Raina", "Boxer")

  ```ruby
  class Dog
    def initialize(name, breed)
      puts "#{name} is a #{breed}"
    end
  end
  ```
