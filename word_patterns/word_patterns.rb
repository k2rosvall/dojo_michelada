# frozen_string_literal: true

# Class to determinate if a string follows a pattern
class WordPatterns
  def self.word_pattern(pattern, string)
    letters = pattern.chars
    words = string.split
    return false if letters.size != words.size

    hash = letters.zip(words).to_h
    string == letters.map { |letter| hash[letter] }.join(' ')
  end
end
