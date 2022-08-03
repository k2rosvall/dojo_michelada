# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'spin_words'

# Tests for IpAddress class
class SpinWordsTest < Minitest::Test
  def test_one_character
    assert_equal SpinWords.spin_words('Welcome'), 'emocleW'
  end

  def test_with_more_characters
    assert_equal SpinWords.spin_words('Hey fellow warriors'), 'Hey wollef sroirraw'
  end
end
