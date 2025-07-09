def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

#p words_from_string("I like Ruby, it is (usually) optimized for programmer happiness")