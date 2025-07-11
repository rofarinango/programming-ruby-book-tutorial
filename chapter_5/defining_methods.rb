class Batman
  def who_is_robin
    puts "Dick Grayson"
  end
  # Ruby allows defining a method twice, it wont raise an error.
  # Prints a warning and redefine the method using the second definition
  # So in this example the output will be "Damian Wayne"
  def who_is_robin
    puts "Damian Wayne"
  end
end

Batman.new.who_is_robin

# In a "regular" method definition, method body starts on the line after the method declaration and continues until a matching end.

def a_method_name(arg)
  puts arg
end

# You can also create one-line methods called "endless method" (because you dont use the end statement)

def a_method_name(arg) = puts args

# Sometimes you'll define a method with no body. (Often the method will be fully defined by a subclass)

def a_method_name; end

# Method Names
# Method names should begin with a lowercase letter or underscore followed by a combination of letters, digits, and underscores.
# Methods that return a boolean resut (so-called predicate methods) are often named with a trailing ?:

1.even?                 # =>  false
2.even?                 # =>  true
1.instance_of?(Integer) # =>  true

# Methods that end in an exclamation point !, are called bang methods and are often paired with a "safe" version. E.g: the class String provides both chop and chop! methods. The first method returns a modified string, the second modifies the receiver in place.

sample = "this is my code"
sample.chop # => "this is my cod"
puts sample      # => "this is my code"

sample.chop! # => "this is my cod"
puts sample       # => "this is my code"

# You can override a limited set of operators by defininf them as methods. E.g:

class Matrix
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def to_s = "(#{x}, #{y})"

    def +(other)
      Matrix.new(x + other.x, y + other.y)
    end
end

first = Matrix.new(1, 2)
second = Matrix.new(3, 4)

puts first + second

 # Method Receiver
 # There are instance method definition, which adds the method to the class it's defined within and makes the method available to instances of that class. But Ruby also allows to define methods for one specific object rathen that the current class. Therefore we can assign methods to the class itself rathen than to the instances of the class by using the self keyword. E.g:
 
class Computer
  def self.function
    "I'm afraid I can't do that"
  end
end

puts Computer.function # => "I'm afraid I can't do that"

# self means "The class this method is being declared inside", in this case Computer.

class Computer
end

mac = Computer.new
pc = Computer.new

def mac.introduction = "I'm a Mac"
def pc.introduction = "I'm a PC"
puts mac.introduction
puts pc.introduction


# Method Parameters

def my_new_method(arg1, arg2, arg3)   # 3 parameters
  # Code for the method would go here
end

def my_other_new_method               # No parameters
  # Code for the method would go here
end

# To defined default values for a method's parameters, meaning this values will be used if the caller doesn't explicitly assing a value to the parameter. You can do this by using the sign equal(=) followed by a Ruby expression.

def cool_dude(arg1="Miles", arg2="Coltrane", arg3="Roach")
  "#{arg1}, #{arg2}, #{arg3}."
end

cool_dude
cool_dude("Bart")
cool_dude("Bart", "Elwood")
cool_dude("Bart", "Elwood", "Linus")

def surround(word, pad_width=word.length/2)
  "[" * pad_width + word + "]" * pad_width
end

puts surround("elephant")
puts surround("fox")
puts surround("fox", 10)

# Variable-Length Parameter Lists
# Use the * key to pass in a variable number of parameters or capture multiple arguments into a single parameter. E.g:

def variable_args(arg1, *rest)
  "arg1=#{arg1} -- rest=#{rest.inspect}"
end

puts variable_args("one")
puts variable_args("one", "two")
puts variable_args("one", "two", "three")

# E.g of anonymous splat parameter to another method without giving it a name

class Example
  def method_1(*)
    method_2(*)
  end

  def method_2(*array_args)
    puts array_args.join("- ")
  end
end

puts Example.new.method_1("a","b","c")

# You cant put the splat parameter anywhere in the method's parameter list.

def split_apart(first, *splat, last)
  puts "First: #{first.inspect}, splat: #{splat.inspect}, " + "last: #{last.inspect}"
end

split_apart(1,2)
split_apart(1,2,3)
split_apart(1,2,3,4)

# Hash and Keyword Parameters
# Ruby lets you define parameters to methods using jkeyawrods as long as the arguments will be passed using the same keyword. e.g:

def method_with_keywords(city:, state: , zip:)
  puts "#{city} - #{state} - #{zip}"

end

method_with_keywords(city: "Chicago", state: "IL", zip: "60606")

def method_with_keywords(city:, state: "FL" , zip:)
  puts "#{city} - #{state} - #{zip}"

end

method_with_keywords(city: "Chicago", zip: "60606")

def varargs(arg1, **rest)
  "arg1=#{arg1}.  rest=#{rest.inspect}"
end

puts varargs("one")
puts varargs("one", color: "red")
puts varargs "one", color: "red", size: "xl"
