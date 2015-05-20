1. How do you define a class?
a class is a group of meathds which can be used to do 
something that keeps things in the class from being modified 
by outside sources can be made private or public inside the class. 
  
2. How does `.new` relate to `initialize` method do?
new will create a new like hash and initialize the method

3. Does this inheritance make sense?

  ```lang-ruby
  class Frog
    #code that makes frogs go hop hop hop
  end
  
  class Animal < Frog
    #code that makes animals live
  class
  ```
  No it doesn't pluss what with the extra last class
  i don't think you can do that in a class if you want to pass something shouldn't it be class Animal(Frog) 

4. Define a instance variables in code 
somthing{|i| i < 1}

5. Define a class variable in code

class Apple
  i = 2
  def girl
  #does stuf that uses i
  end
 end
  

6. Define a global variable in code
 don't use them! lol but if you do it would be all caps
 APPLE = 2

7. T/F the `eat` method is private
FALSE------
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
it reads

9.  Define a attr_accessor in code, and what does it do?
it reads and writes does both 

10.  How would you instantiate this class? new object from class

  ```ruby
  class Dog
    def initialize(name, breed)
      puts "#{name} is a #{breed}"
    end
  end
  ```
Dog = dogs