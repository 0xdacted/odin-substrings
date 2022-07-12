# takes input string and an array of substrings, determines whether the input string is included in the array of substrings, 
#  returns a hash listing each substring that was found in the input string and how many times it was found
require 'pry-byebug'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
hash = {}
times = 0
if dictionary.include?(word)
  times +=1
  hash = {substring: word, times: times}
end
hash
end

substrings("below", dictionary)