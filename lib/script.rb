require_relative 'anagram'

puts 'to check for anagrams or antigrams, enter first word:'
word1 = gets.chomp
puts 'enter second word:'
word2 = gets.chomp
my_words = Words.new(word1)
puts my_words.anagram(word2)