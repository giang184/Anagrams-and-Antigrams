def anagram(word1, word2)
  if (!/[aeiouy]/.match?(word1))
    "'#{word1}' is not a word"
  elsif (!/[aeiouy]/.match?(word2))
    "'#{word2}' is not a word"
  elsif word1.downcase.chars.sort.join == word2.downcase.chars.sort.join
    "'#{word1}' and '#{word2}' ARE anagrams"
  elsif (!/[${word1}]/.match?(word2))
    "'#{word1}' and '#{word2}' are ANTIGRAMS"
  else
    "'#{word1}' and '#{word2}' ARE NOT anagrams"
  end
end
