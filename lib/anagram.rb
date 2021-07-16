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
      "'#{@word}' and '#{word2}' ARE NEITHER anagrams nor antigrams" + match(word2)
    end
  end

  def match(word2)
    if(word2.length() > @word.length())
      short = @word
      long = word2
    else
      short = word2
      long = @word
    end
    result = ""
    count = 0
    short.split('').each do |element|
      if(long.include?(element))
        result += element + ", "
        count += 1
      end
    end
    if (count > 0)
      return ", but they have #{count} matching letters: " + result[0,result.length() -2]
    else
      return ""
    end
  end
end