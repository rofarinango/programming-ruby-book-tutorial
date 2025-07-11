# Ineritance and messages
# inheratiances allows you to create a class that is a specialization of another class. This is called a subclass and the original is a superclass of the subclass.
# This make it so the child class inherits all of the capabilities of its parent class. All the parent's instance methods are available to instances of the child.
# E.g:

class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

p = Parent.new
p.say_hello

class Child < Parent
end

c = Child.new
c.say_hello

class Parent
end

class Child < Parent
end

puts Child.superclass
puts Parent.superclass                        # => Object
puts Parent.superclass.superclass             # => BasicObject
puts Parent.superclass.superclass.superclass  # => nil

class Person
  def initialize(name)
    @name = name
  end

  def to_s
    "Person named #{@name}"
  end
end

p = Person.new("Michael")
puts p
