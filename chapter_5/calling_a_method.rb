class InvoiceWriter
  def initialize(order)
    @order = order
  end

  def write_on(output)
    # called on current object, as there is no receiver
    write_header_on(output)
    write_body_on(output)
    write_totals_on(output)
  end

  def write_header_on(output)
    # ...
  end

  def write_body_on(output)
    # ...
  end

  def write_totals_on(output)
    # ...
  end
end

# When you call a method, you can convert any collection, enumerable oject, or object that implements to_a into its constituent elements and pass those elements as individual arguments to the method.

def five(a, b, c, d, e)
  "I was passed #{a} #{b} #{c} #{d} #{e}"
end

puts five(1, 2, 3, 4, 5)
puts five(1, 2, 3, *['a', 'b'])
puts five(*['a', 'b'], 1, 2, 3)
puts five(*(10..14))
puts five(*[1, 2], 3, *(4..5))

# You can expand hashes, or anything that implements to_h, into keyword arguments by prefixing the argument with a double-splat:

def method_with_keywords(city:, state:, zip:)
  "I live in #{city}, #{state}, #{zip}"
end

data = {city: "Chicago", state: "IL", zip: "60606"}
puts method_with_keywords(**data)

# Passing Block Arguments
# An & in a parameter list converts a block argument into a Proc object. You can do this in reverse by passing a Proc object, or anything that implements the method to_proc, and prefixing it with an & to convert it to a block argument.
# E.g: use of objects that implement to_proc is Symbol. The following two lines of code behave identically:

puts ["a", "b", "c"].map { |s| s.upcase }
puts ["a", "b", "c"].map(&:upcase)

# You'll frequently see this syntax as a shortcut for methods that take simple blocks like map or sort_by

print "(t)imes or (p)lus:"
operator = gets
print "number: "
number = Integer(gets)

if operator.start_with?("t")
  calc = -> (n) { n * number }
else
  calc = -> (n) { n + number }
end

puts((1..10).map(&calc).join(", "))

# shorter version

print "(t)imes or (p)lus:"
operator = gets
print "number: "
number = Integer(gets)
method = number.method(operator.start_with?("t") ? :* : :+)
puts((1..10).map(&method).join(", "))
