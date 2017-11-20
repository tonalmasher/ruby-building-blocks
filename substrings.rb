def substrings(phrase, words)

  loweredPhrase = phrase.downcase
  words = words.sort!
  foundWords = {}

  words.each do | word |
    occurences = loweredPhrase.scan(word).length
    if occurences > 0
       foundWords[word.to_s] = occurences
    end
  end
  return foundWords
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
