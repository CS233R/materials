1. How do you define a class?

2. How does `.new` relate to `initialize` method do?

3. Does this inher	stance make sense?

  ```lang-ruby
  class Frog
    #code that makes frogs go hop hop hop
  end
  
  class Animal < Frog
    #code that makes animals live
  class
  ```

4. Define a instance variables in code

5. Define a class variable in code

6. Define a global variable in code

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

8.  Define a attr_reader in code, and what does it do?
9.  Define a attr_accessor in code, and what does it do?

10.  How would you instantiate this class?

  ```ruby
  class Dog
    def initialize(name, breed)
      puts "#{name} is a #{breed}"
    end
  end
  ```
