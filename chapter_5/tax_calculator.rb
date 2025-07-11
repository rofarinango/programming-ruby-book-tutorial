class TaxCalculator
  def initialize(name, &block)
    @name, @block = name, block
  end

  def get_tax(amount)
    "#{@name} on #{amount} = #{@block.call(amount)}"
  end
end

tc = TaxCalculator.new("Sales tax") { |amt| amt * 0.075 }

puts tc.get_tax(100)
puts tc.get_tax(250)


# Doing def(*args, **kargs, &block) is an akward way to gather all the arguments. Ruby has a simpley way (...)

class Thing
  def do_something(...)
    do_something_else(...)
  end
end

# The triple dot syntax is an anonymous way to pass all arguments to one method onward to a different method