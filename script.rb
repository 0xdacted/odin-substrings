# takes input string and an array of substrings, determines whether any substring was found in the input string , 
#  returns a hash listing each substring that was found in the input string and a counter of times it was found
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = {}
dictionary.each do |key| 
  
  if string.downcase.include?(key)
  times = string.downcase.scan(/#{key}/).count
  hash[key] = times
 
end
end

p hash

end

substrings("Howdy partner, sit down! How's it going?", dictionary)
