1. How do you define a class?
```answer
class ClassName
  code
end
```

2. How does `.new` relate to `initialize` method do?
```answer
.new creates a new instance of the class and the 
initialize method sets initial parameter values within the class
```

3. Does this inheritance make sense?
```answer
No, it should be reversed. The Frog class should be inheriting code from 
the Animal class. The Animal class has code that is meant for all animals
which will be added to the code that is meant specifically for the frog.
```

  ```lang-ruby
  class Frog
    #code that makes frogs go hop hop hop
  end
  
  class Animal < Frog
    #code that makes animals live
  class
  ```

4. Define a instance variables in code
```answer
@instancevariable = value
```

5. Define a class variable in code
```answer
@@classvariable = value
```

6. Define a global variable in code
```answer
$GlobalVariable = value
```

7. T/F the `eat` method is private
```answer
False
```

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
```answer
attr_reader:: methodName
gives a class read only permission
```

9.  Define a attr_accessor in code, and what does it do?
```answer
attr_accessor:: methodName
gives a class read and write permissions
```

10.  How would you instantiate this class?
```answer
Dog.new(name, breed)
```

  ```ruby
  class Dog
    def initialize(name, breed)
      puts "#{name} is a #{breed}"
    end
  end
  ```
