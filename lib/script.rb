require_relative 'anagram'

print 'to check for anagrams or antigrams, enter first word:'
word1 = gets.chomp
print 'enter second word:'
word2 = gets.chomp
my_words = Words.new(word1)
puts my_words.anagram(word2)