require_relative "words_from_string"

raw_text = "The problem breaks down into two parts. First, given some text as a string, return a list of words. That sounds like an array. Then. build a count for each distinct word. That sounds like a use for a hash---we can index it with the word and use the corresponding entry to keep a count."

puts words_from_string(raw_text)
  .tally
  .sort_by { |word, count| count }
  .tap { |result| puts "sorted tally: #{result}\n\n"}
  .last(5)
  .tap { |result| puts "only the last five: #{result}\n\n"}
  .reverse
  .tap { |result| puts "reversed: #{result}\n\n"}
  .map { |word, count| "#{word}: #{count}" }