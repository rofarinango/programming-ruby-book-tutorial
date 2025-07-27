threads = 4.times.map do |number|
  Thread.new(number) do |i|
    raise "Boom!" if i == 1
    print "#{i}\n"
  end
end

puts "Waiting"
threads.each do |t|
  t.join
rescue RuntimeError => e
  puts "Failed: #{e.message}"
end
puts "Done"
