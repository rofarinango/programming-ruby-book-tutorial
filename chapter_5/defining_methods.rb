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
