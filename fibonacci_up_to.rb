def fibonacci_up_to(max)
  # parallel assigment (i1 = 1 and i2 = 1)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1 + i2
  end
end

fibonacci_up_to(1000) { |f| print f, " "}
puts
