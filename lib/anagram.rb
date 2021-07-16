def anagram(word1, word2)
  if word1.downcase.chars.sort.join == word2.downcase.chars.sort.join
    "'#{word1}' and '#{word2}' ARE anagrams"
  else
    "'#{word1}' and '#{word2}' ARE NOT anagrams"
  end
end