require_relative "vowel_finder"

vf = VowelFinder.new("the quick brown fox jumped")
puts vf.reduce(:+)
