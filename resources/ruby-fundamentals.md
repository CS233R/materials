

#Ruby Fundamentals 

##Learning Goals:

###General
**IRB** - Interactive Ruby Shell


Outputing a string via the `puts` method

```ruby
puts "Some string"
Some string 
=> nil # the arrow denotes the return value, in this case it returns nil
```
Another way to output a string but without a line break via `print`

```ruby
print "Some string"
Some String => nil
```

Getting input from a user via the `gets` method

```ruby
print "What is your name? "
What is your name?  => nil
name = gets.chomp
Sean # note this is input from the user
 => "Sean"
puts name
Sean => nil
```

To run a ruby program from the command line navigate to the file you want to run. This usually ends in .rb. Given I have a file name `program.rb`

```ruby
ruby program.rb
```

### Variables

What's in a variable?

variables in ruby are dynamically typed. This means you can store any type inside a variable.

```ruby
name = "Sean" #string
name = 20 #fixnum
name = { some: "hash" } #hash
name = [ 'a', 'small', 'array'] #array
name = Object.new #Object
```
Invalid variables

```ruby
&name = "Sean" #syntax error, unexpected &
123name = "Sean" #syntax error, unexpected tIDENTIFIER, expecting end-of-input
full name = "Sean" #
```
#### Best practices

- lowercase
- underscored
- descriptive of what you are storing


```ruby
name = "Sean" #ok
first_name = "Sean" #better more descriptive
BadName = "Sean" #bad -not underscored, capitialized
```

####Constants

Are just a convention and are `ALL_UPPERCASE`. It will raise a notice if you try to reassign the variable.

```ruby
MY_CONSTANT = "Ruby is the best"
MY_CONSTANT = "Python is the best"
 (irb):3: warning: already initialized constant MY_CONSTANT
 (irb):2: warning: previous definition of MY_CONSTANT was here
  => "Python is the best"
```

Which of these are good variable names?

```ruby
HavingAGreatDAy #bad
THISISGOOD #bad
a_good_variable #good
3_good_variables #bad
```

Global variables are defined with a `$` prepended

```ruby
$my_global = "some global information" #don't use these
```

###Strings

Docs - [http://ruby-doc.org/core-2.2.0/String.html]()

Strings are a core ruby class. 

```ruby
"A String".class
 => String
 "A String".class.ancestors
 => [String, Comparable, Object, Kernel, BasicObject]
```

Strings can be created via

Quotes

```ruby 
"A string"
=> "A string"
```

`%q` creates a string without interpolation

```ruby 
interpolation = "cannot be interpolated"
%q{A string #{interpolation}} # => "A string \#{interpolation}"
```
  
`%Q` creates a string without interpolation

```ruby 
interpolation = "can be interpolated"
%Q{A string #{interpolation}} # => "A string can be interpolated"
```

`heredoc` creating many lines of text

```ruby
long_string=<<-LONG_STRING
This is a very long string
it spans multiple lines
and would normally be hard to write
without the help of heredoc
LONG_STRING
=> "This is a very long string\nit spans multiple lines\nand would normally be hard to write\nwithout the help of heredoc\n"
```

String methods

```ruby 
"hello\r\n".chomp #=> "hello"
"hello".capitalize  #=> "Hello"
"hello".gsub(/[aeiou]/, '*') #=> "h*ll*"
```

Whitespace characters consists of

```ruby
\" – double quote
\\ – single backslash
\a – bell/alert
\b – backspace
\r – carriage return
\n – newline
\s – space
\t – tab
```

###Symbols
Docs - [http://ruby-doc.org/core-2.2.0/Symbol.html]()

Are represented by a `:` and a non-quoted string `:example`

Symbols are special because they are only allocated in memory once and are shared wherever they are used.


```ruby
puts :sean 
# sean
# => nil
puts :sean.to_s
sean
 => nil
puts :sean.class # => Symbol
:sean.class.ancestors # => [Symbol, Comparable, Object, Kernel, BasicObject]
```

###Numbers
Docs
- [http://ruby-doc.org/core-2.2.0/Integer.html]()
- [http://ruby-doc.org/core-2.2.0/Fixnum.html]()
- [http://ruby-doc.org/core-2.1.1/Bignum.html]()
- [http://ruby-doc.org/core-2.2.0/Range.html]()

####Different Types
```ruby
#Fixnum (Whole numbers)
5

#Bignum (Large Whole number)
100000000000000000000000000000000000

#Floats (Decimals)
3.14

#Rational (Fractions)
1/2
```
####Operators
````ruby
#Addition
5 + 5 # => 10

#Subtraction
10 - 3 # => 7

#Multiplication
4 * 8 # => 32

#Division
3 / 4 # => 0
3.0 / 4.0 # => 0.75

#Modulus
5 % 2 #  => 1

#Exponents
2**2 # => 4

#Range Operators
1..10 # Range of 1 - 10 (Inclusive)
1...10 # Range of 1 - 10 (Not including 10)
````
####Assignment Operators
```ruby
#Calculates operation, then reassigns the result to the variable
+=
-=
*=
/=
%=
**=
```
####Order of operations
```ruby
#PEMDAS
()
**
*/%
+-
```
####Numbers/Strings conversion
```ruby
#Convert number to string
3.to_s

#Concatinate number and string
5.to_s + " cats"
"#{5} cats" #Also works, and is technically faster. Also avoids errors with floats

#String to number
"1".to_i #Convert to integer
"3".to_i(base) #Convert to integer of base (2 - 36)
"3.14".to_f #Convert to float
"2".to_r #Convert to rational and simplify (2/1)
"5/10".to_r ==  1/2
 
#Possible issues
"973h2".to_i  == 973 #Ignores everything after it finds a non-number
"Hi52".to_i == 0.0 #Letters in front
```


###Methods
Docs - [http://ruby-doc.org/core-2.2.0/Method.html]()

Methods are defined using the keyword `def`

####A method without arguments

```ruby
def a_method_name
  # code goes here
end
```

####A method with required arguments

```ruby
def favorite_color(name, color)
  puts "#{name}'s favorite color is #{color}" 
end

favorite_color("Sean", "Blue")
Sean's favorite color is Blue
 => nil
```

####A method with arguments and defaults which make the arguments optional

```ruby
def favorite_color(name = 'sean', color = 'blue')
  puts "#{name}'s favorite color is #{color}"
end

favorite_color
sean's favorite color is blue
 => nil
```

####A method with arguments when passed a hash as the last argument

```ruby
def favorite_color(name = 'sean', options)
  puts "#{name}'s favorite color is #{options[:favorite]}, he dislikes #{options[:dislikes]}"
end

favorite_color('sean', favorite: 'blue', dislikes: 'brown')

#can also be written with the more explicit hash syntax
favorite_color('sean', { favorite: 'blue', dislikes: 'brown' })

sean's favorite color is blue, he dislikes brown
 => nil
```

####The last statement in the method is returned unless specified elsewhere

```ruby
def favorite_color(name = 'sean', colors = 'blue')
  puts "#{name}'s favorite color is #{color}"
  name
end

favorite_color("joe")
joe's favorite color is blue
 => "joe"
```

####The last statement in the method is returned unless specified elsewhere

```ruby
def favorite_color(name = 'sean', color = 'blue')
  puts "#{name}'s favorite color is #{color}"
  return color
  name
end

favorite_color("joe")
joe's favorite color is blue
 => "blue"
```

###Assignment Operators

```ruby
size = 10 
size += 1 # => 11
size *= 2 # => 20
size -= 1 # => 9
size /= 2 # => 5
size %= 3 # => 1
size **= 2 # => 100
```

###Comparison Operators

```ruby
10 < 5 # => false
5 > 10 # => false
5 >= 5 # => true
5 <= 6 # => false
```

###Control Structures

if

```ruby
if(statement)
 # if the statement is true
end
```

if / else

```ruby
if(statement)
# if statement is true
else
# if statement is false
end
```

If / elsif / else

```ruby
if(statement)
  #if statement is true
elsif(new_statement)
  #if new_statement is true
elsif(another_statement)
  #if another_statement
else
  #if none of the statements above are true
end
```

Unless

```ruby
unless(statement)
  # if statement is false
  # equivalent to if(!statement)
end
```

Case

```ruby
case variable
when condition
  # do something
when another_condition
  # do something
else
  # do something if no when conditions
```

Also the single line formatting version of a case statement

```ruby
case variable
when condition then # do something
when another_condition then # do something
else # do something if no when conditions
```

###Logical Operators

```ruby 
if(true && false)
  #code not run
end

if(true && true)
  #code is run
end

if(true || false)
  #code is run
end

if(true || true && false)
  puts 'hello'
end

if(!true || true)
  #code is run
end
```

####Operator Precendence

```ruby
[ ] [ ]= #Element reference, element set
** #Exponentiation (raise to the power)
! ~ + - #Not, complement, unary plus and minus (method names for the last two are +@ and -@)
* / % #Multiply, divide, and modulo
+ - #Addition and subtraction
>> << #Right and left bitwise shift
& #Bitwise `AND'
^ | #Bitwise exclusive 'OR' and regular 'OR'
<= < > >= #Comparison operators
<=> == === != =~ !~ #Equality and pattern match operators (!= and !~ may not be defined as methods)
&& #Logical `AND'
|| #Logical `AND'
.. ... #Range (inclusive and exclusive)
? : #Ternary if-then-else
= %= { /= -= += |= &= >>= <<= *= &&= ||= **= #Assignment
defined? #Check if specified symbol defined
not #Logical negation
or and #Logical composition
if unless while until #Expression modifiers
begin/end #Block expression
```
###Arrays
Arrays can be defined multiple ways. Arrays in Ruby can contain multiple types including other arrays

Creating an array using bracket notation and using a class

```ruby
[] # => []
Array.new # => []
```

Array examples

```ruby
[] # => []
['a string', 42] #=> ["a string", 42]
[Array.new, Array.new] # => [[], []]
  
```

```ruby
["red", "blue", "orange", "pink"].length # => 4
```

```ruby
["red", "blue", "orange", "pink"].first # => "red"
```

```ruby
["red", "blue", "orange", "pink"].last # => "pink"
```

```ruby
["red", "blue", "orange", "pink"].sample  # => "orange"
```

```ruby
["red", "blue", "orange", "pink"].sort # => ["blue", "orange", "pink", "red"]
```

```ruby
["red", "blue", "orange", "pink"].include?("pink") # => true
```

```ruby
["red", "blue", "orange", "pink"].shuffle #randomizes the array# => ["orange", "blue", "pink", "red"]
```

```ruby
["red", "blue", "orange", "pink"].pop # => "pink"
```

```ruby
["red", "blue", "orange", "pink"].push("grey") 
# => ["red", "blue", "orange", "pink", "grey"]
```

The shovel operator

```ruby
["red", "blue", "orange", "pink"] << "grey"
# => ["red", "blue", "orange", "pink", "grey"]
```


###Hashes
  
[http://ruby-doc.org/core-2.2.0/Hash.html](Docs)

Objects that act like key value stores that have enumerable behavior 

Instantiated two ways

```ruby
Hash.new
{}
```

Hash class and inheritance  

```ruby
{}.class # => Hash
Hash.class.ancestors
# => [Class, Module, Object, Kernel, BasicObject]
```

#### Setting hashes

```ruby
my_hash = { my_key: 'value', another_key: 'another value' }

my_hash = Hash.new
my_hash[:my_key] = 'value'
my_hash[:another_key] = 'another value'
```
#### Multiple hash formats
```ruby
#keys are strings
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }

#keys are symbols but using older hash notation
options = { :font_size => 10, :font_family => "Arial" }

#keys are symbols using newest hash notation
options = { font_size: 10, font_family: "Arial" }
```

####Setting of defaults

```ruby
grades = Hash.new(0)
#or using the default method on the hash
grades = {"Timmy Doe" => 8}
grades.default = 0
```

#### Accessing items

```ruby
#Accessing a hash using bracket notation []
my_hash = { my_key: 'value', another_key: 'another value' }
my_hash[:my_key] # => 'value'
my_hash[:not_a_key_yet] # => nil

#using fetch the keys must be set or you must provide a default value
my_hash.fetch(:my_key) # => 'value'
my_hash.fetch(:my_key, 'default value') # => 'value'
my_hash.fetch(:not_a_key_yet, 'default value') #=> 'default value'
my_hash.fetch(:not_a_key_yet) # => KeyError: key not found: :not_a_key_yet

```

#### Iteration

```ruby
my_hash = { my_key: 'value', another_key: 'another value' }

my_hash.each { |key, value| puts "#{key} is #{value}" }
# my_key is value
# another_key is another value
#  => {:my_key=>"value", :another_key=>"another value"}
```

#### Useful Methods

```ruby
my_hash = { my_key: 'value', another_key: 'another value' }

my_hash.delete(:my_key) # => 'value'
{}.empty? # => true
my_hash.has_key?(:my_key) # => true
my_hash.has_value?('value') # => true
my_hash.key('value') # => :my_key
my_hash.length # => 2
my_hash.values # => ["value", "another value"]
my_hash.keys # => [:my_key, :another_key]

my_other_hash = { new_key: "new value", my_key: "I will overwrite"}
my_hash.merge(my_other_hash)
# => {:my_key=>"I will overwrite", :another_key=>"another value", :new_key=>"new value"}

# selecting values from the collection
my_hash = { "a" => 100, "b" => 200, "c" => 300 }
my_hash.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
my_hash.select {|k,v| v < 200}  #=> {"a" => 100}
```


###Loops

#### While Statement loop

```ruby
$i = 0
$num = 3

while $i < $num  do
   puts("value inside loop is #$i" )
   $i +=1
end
# value inside loop is 0
# value inside loop is 1
# value inside loop is 2
# => nil
```

#### While Modifier loop

```ruby
$i = 0
$num = 3
begin
   puts("value inside loop is #$i" )
   $i +=1
end while $i < $num
# value inside loop is 0
# value inside loop is 1
# value inside loop is 2
# => nil
```

#### Until loop

```ruby
$i = 0
$num = 5

until $i > $num  do
   puts("value inside loop is #$i" )
   $i +=1
end
# value inside loop is 0
# value inside loop is 1
# value inside loop is 2
# value inside loop is 3
# value inside loop is 4
# value inside loop is 5
# => nil
```

#### For loop
```ruby
for i in 0..3
   puts "Value of local variable is #{i}"
end
# Value of local variable is 0
# Value of local variable is 1
# Value of local variable is 2
# Value of local variable is 3
# => nil
```

###Enumerables

Enumerable is a mixin that provides objects with the ability to iterate through a collection. It is mixed into many objects including `Hash, Array`

Docs: [http://ruby-doc.org/core-2.2.2/Enumerable.html]()

#### Each

Iterating through an `Array`

```ruby
numbers = ['one', 'two', 'three']
numbers.each { |number| puts number }
# one
# two
# three
#  => ["one", "two", "three"]
```

```ruby
numbers = ['one', 'two', 'three']
numbers.each_with_index { |number, index| puts "#{number}'s index is #{index}" }
# one's index is 0
# two's index is 1
# three's index is 2
#  => ["one", "two", "three"]
```

Iterating through a `Hash`

```ruby
person = {name: "Sean", eye_color: "green"}
person.each { |key, value| puts "#{key} is #{value}" }
# name is Sean
# eye_color is green
# => {:name=>"Sean", :eye_color=>"green"}
```

Iterating through a `Enumerator`

```ruby
"Sean".chars.class # => Enumerator
"Sean".chars.each { |char| puts char }
# S
# e
# a
# n
# => "Sean"

```


#### Map / Collect

Allows you to map values into a new array.

```ruby
my_array = [ "a", "b", "c", "d" ]
my_array.map { |char| char + "!" }        
# => ["a!", "b!", "c!", "d!"]
```


#### Inject / Reduce

```ruby
# Sum some numbers
(5..10).reduce(:+)                             #=> 45
# Same using a block and inject
(5..10).inject { |sum, n| sum + n }            #=> 45
# Multiply some numbers
(5..10).reduce(1, :*)                          #=> 151200
# Same using a block
(5..10).inject(1) { |product, n| product * n } #=> 151200
# find the longest word
longest = %w{ cat sheep bear }.inject do |memo, word|
   memo.length > word.length ? memo : word
end
longest #=> "sheep"
```

###Booleans

####True Class

```ruby
true.class # => TrueClass
true.class.ancestors # => [TrueClass, Object, Kernel, BasicObject]
true.nil? # => false
true.to_s # => "true"
```

####False Class
```ruby
false.class # => FalseClass
false.class.ancestors # => [FalseClass, Object, Kernel, BasicObject]
false.nil? # => false
false.to_s # => "false"
```

####Nil Class

```ruby
nil.class # => NilClass
nil.class.ancestors # => [NilClass, Object, Kernel, BasicObject]
nil.nil? # => true
nil.to_s # => ""
nil.to_a # => []
```
