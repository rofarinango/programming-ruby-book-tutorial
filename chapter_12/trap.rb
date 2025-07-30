trap("CLD") do
  pid = Process.wait
  puts "Child pid #{pid}: terminated"
end

spawn("sort testfile > output.txt")

# Do other stuff