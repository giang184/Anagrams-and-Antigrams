class Words
  attr_reader(:word)

  def initialize(word)
    @word = word
  end

  def anagram(word2)
    temp1 = @word.downcase.chars.sort.join.gsub(/[^a-z]/, '')
    temp2 = word2.downcase.chars.sort.join.gsub(/[^a-z]/, '')
    if !/[aeiouy]/.match?(temp1)
      "'#{@word}' is not a word"
    elsif (!/[aeiouy]/.match?(temp2))
      "'#{word2}' is not a word"
    elsif temp1 == temp2
      "'#{@word}' and '#{word2}' are ANAGRAMS"
    elsif !(/[#{temp1}]/.match?(temp2))
      "'#{@word}' and '#{word2}' are ANTIGRAMS"
    else
      "'#{@word}' and '#{word2}' ARE NEITHER anagrams nor antigrams" + match()
    end
  end

  def match()
    ""
  end
end