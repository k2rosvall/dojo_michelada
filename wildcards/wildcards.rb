# frozen_string_literal: true

# Get all the possible combinations
class Wildcard
  CHARACTERS = %w[0 1].freeze
  def self.possibilities(string)
    result = []
    return result << string unless string.include?('?')

    replace_character(string)
  end

  def self.replace_character(string)
    CHARACTERS.map do |digit|
      new_string = string.sub('?', digit)
      new_string.include?('?') ? replace_character(new_string) : new_string
    end.flatten
  end
end
