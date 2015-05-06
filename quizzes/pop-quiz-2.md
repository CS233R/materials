1. How do you define a class?
  class Name
  end
  
2. How does `.new` relate to `initialize` method do?
  .new calls the initialize method in the new object of the class
  
3. Does this inheritance make sense?
  
  ```lang-ruby
  class Frog
    #code that makes frogs go hop hop hop
  end
  
  class Animal < Frog
    #code that makes animals live
  end
  ```

No it does not. It would need to be:

```lang-ruby
class Animal
  #code that makes animals live
end

class Frog < Animal
  #code that makes frogs goes hop hop hop
end
```

4. Define a instance variables in code
  @var
  
5. Define a class variable in code
  @@var
  
6. Define a global variable in code
  $var
  
7. T/F the `eat` method is private
  False
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
  attr_reader :name. It allows people to only read the name

9.  Define a attr_accessor in code, and what does it do?
  attr_accessor :name. It allows people to read and write the name

10.  How would you instantiate this class?

  ```ruby
  class Dog
    def initialize(name, breed)
      puts "#{name} is a #{breed}"
    end
  end
  ```
newDog = Dog.new(someName, someBreed)