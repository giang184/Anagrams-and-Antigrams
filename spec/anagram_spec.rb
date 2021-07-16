require('rspec')
require('anagram')
require('pry')

describe('#title_case') do
  it("Checks if two words are anagrams") do
    expect(anagram('hello', 'hello')).to(eq("'hello' and 'hello' ARE anagrams"))
  end
  it("Checks if two words are not anagrams") do
    expect(anagram('hello', 'oell')).to(eq("'hello' and 'oell' ARE NOT anagrams"))
  end
end