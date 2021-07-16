require('rspec')
require('anagram')
require('pry')

describe('#title_case') do
  it("Checks if two identical words are anagrams") do
    expect(anagram('hello', 'hello')).to(eq("'hello' and 'hello' ARE anagrams"))
  end
  it("Checks that two different words are not anagrams") do
    expect(anagram('hello', 'oell')).to(eq("'hello' and 'oell' ARE NOT anagrams"))
  end
  it("Checks if two scrambled words are anagrams") do
    expect(anagram('hello', 'olleh')).to(eq("'hello' and 'olleh' ARE anagrams"))
  end
  it("Checks if two scrambled words are anagrams, accouting for the possibility for lower and upper case") do
    expect(anagram('Tea', 'Eat')).to(eq("'Tea' and 'Eat' ARE anagrams"))
  end
  it("Checks if word1 is a word w/o vowels") do
    expect(anagram('stmp', 'Eat')).to(eq("'stmp' is not a word"))
  end
  it("Checks if word2 is a word w/o vowels") do
    expect(anagram('foo', 'jklt')).to(eq("'jklt' is not a word"))
  end
  it("Checks for antigrams") do
    expect(anagram('foo', 'kit')).to(eq("'foo' and 'kit' are ANTIGRAMS"))
  end
end