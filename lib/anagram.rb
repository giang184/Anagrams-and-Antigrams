class Words
  attr_reader(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram()
    temp1 = @word1.downcase.chars.sort.join.gsub(/[^a-z]/, '')
    temp2 = @word2.downcase.chars.sort.join.gsub(/[^a-z]/, '')
    if !/[aeiouy]/.match?(temp1)
      "'#{@word1}' is not a word"
    elsif (!/[aeiouy]/.match?(temp2))
      "'#{@word2}' is not a word"
    elsif temp1 == temp2
      "'#{@word1}' and '#{@word2}' are ANAGRAMS"
    elsif !(/[#{temp1}]/.match?(temp2))
      "'#{@word1}' and '#{@word2}' are ANTIGRAMS"
    else
      "'#{@word1}' and '#{@word2}' ARE NEITHER anagrams nor antigrams"
    end
  end
end