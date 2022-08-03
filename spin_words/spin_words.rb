# frozen_string_literal: true

# Class to reverse strings
class SpinWords
  def self.spin_words(string)
    string.split(' ').map { |word| word.length > 4 ? word.reverse : word }.join(' ')
  end
end
