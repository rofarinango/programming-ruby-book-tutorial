new_pipe = IO.popen("-", "w+")
if new_pipe
  new_pipe.puts "Get a job!"
  $stderr.puts "I'm the parent, the child said to me '#{new_pipe.gets.chomp}'"
else
  $stderr.puts "I'm the child, the parent said to me '#{gets.chomp}'"
  puts "OK"
end
