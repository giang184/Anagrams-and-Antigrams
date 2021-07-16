require('rspec')
require('anagram')
require('pry')

describe('#anagram') do
  it("Checks if two identical words are anagrams") do
    my_words = Words.new('hello', 'hello')
    expect(my_words.anagram()).to(eq("'hello' and 'hello' are ANAGRAMS"))
  end
  it("Checks that two different words are not anagrams") do
    my_words = Words.new('hello', 'oell')
    expect(my_words.anagram()).to(eq("'hello' and 'oell' ARE NEITHER anagrams nor antigrams"))
  end
  it("Checks if two scrambled words are anagrams") do
    my_words = Words.new('hello', 'olleh')
    expect(my_words.anagram()).to(eq("'hello' and 'olleh' are ANAGRAMS"))
  end
  it("Checks if two scrambled words are anagrams, accouting for the possibility for lower and upper case") do
    my_words = Words.new('Tea', 'Eat')
    expect(my_words.anagram()).to(eq("'Tea' and 'Eat' are ANAGRAMS"))
  end
  it("Checks if word1 is a word w/o vowels") do
    my_words = Words.new('stmp', 'Eat')
    expect(my_words.anagram()).to(eq("'stmp' is not a word"))
  end
  it("Checks if word2 is a word w/o vowels") do
    my_words = Words.new('foo', 'jklt')
    expect(my_words.anagram()).to(eq("'jklt' is not a word"))
  end
  it("Checks for antigrams") do
    my_words = Words.new('foo', 'kit')
    expect(my_words.anagram()).to(eq("'foo' and 'kit' are ANTIGRAMS"))
  end
  it("Checks if two sentences are anagrams") do
    my_words = Words.new('The Morse Code', 'Here come dots!')
    expect(my_words.anagram()).to(eq("'The Morse Code' and 'Here come dots!' are ANAGRAMS"))
  end
end