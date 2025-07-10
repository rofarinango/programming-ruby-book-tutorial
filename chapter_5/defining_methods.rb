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