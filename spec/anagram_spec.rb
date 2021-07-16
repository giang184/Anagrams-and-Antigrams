require('rspec')
require('anagram')
require('pry')

describe('#anagram') do
  it("Checks if two identical words are anagrams") do
    my_words = Words.new('hello')
    expect(my_words.anagram('hello')).to(eq("'hello' and 'hello' are ANAGRAMS"))
  end
  it("Checks that two different words are not anagrams") do
    my_words = Words.new('hello')
    expect(my_words.anagram('oell')).to(eq("'hello' and 'oell' ARE NEITHER anagrams nor antigrams"))
  end
  it("Checks if two scrambled words are anagrams") do
    my_words = Words.new('hello')
    expect(my_words.anagram('olleh')).to(eq("'hello' and 'olleh' are ANAGRAMS"))
  end
  it("Checks if two scrambled words are anagrams, accouting for the possibility for lower and upper case") do
    my_words = Words.new('Tea')
    expect(my_words.anagram('Eat')).to(eq("'Tea' and 'Eat' are ANAGRAMS"))
  end
  it("Checks if word1 is a word w/o vowels") do
    my_words = Words.new('stmp')
    expect(my_words.anagram('Eat')).to(eq("'stmp' is not a word"))
  end
  it("Checks if word2 is a word w/o vowels") do
    my_words = Words.new('foo')
    expect(my_words.anagram('jklt')).to(eq("'jklt' is not a word"))
  end
  it("Checks for antigrams") do
    my_words = Words.new('foo')
    expect(my_words.anagram('kit')).to(eq("'foo' and 'kit' are ANTIGRAMS"))
  end
  it("Checks if two sentences are anagrams") do
    my_words = Words.new('The Morse Code')
    expect(my_words.anagram('Here come dots!')).to(eq("'The Morse Code' and 'Here come dots!' are ANAGRAMS"))
  end
end