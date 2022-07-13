# takes input string and an array of substrings, determines whether any substring was found in the input sting , 
#  returns a hash listing each substring that was found in the input string and how many times it was found
require 'pry-byebug'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = {}
  hash_array = []

dictionary.each do |definition| 
  
  if string.downcase.include?(definition)
  times = dictionary.count {|word| word.match(definition)}
  hash = {substring: definition, times: times}
  
  hash_array.push(hash)
  
end
end

p hash_array

end

substrings("Howdy partner, sit down! How's it going?", dictionary)