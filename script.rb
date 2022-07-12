# takes input string and an array of substrings, determines whether any substring was found in the input sting , 
#  returns a hash listing each substring that was found in the input string and how many times it was found
require 'pry-byebug'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  hash = {}
  times = 0
  hash_array = []

dictionary.each do |entry| 
  
  if word.include?(entry)
  times +=1
  hash = {substring: entry, times: times}
  hash_array.push(hash)
  times -=1
end
end

p hash_array

end

substrings("below", dictionary)