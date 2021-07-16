require('rspec')
require('anagram')
require('pry')

describe('#title_case') do
  it("Checks if two words are anagrams") do
    expect(anagram('hello', 'hello')).to(eq("'hello' and 'hello' are anagrams"))
  end
  
end