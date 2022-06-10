# frozen_string_literal: true

gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'word_patterns'

# Tests for WordPatterns class
class IpAddressTest < Minitest::Test
  def test_pattern1
    assert_equal true, WordPatterns.word_pattern('aaaa', 'cat cat cat cat')
  end

  def test_pattern2
    assert_equal true, WordPatterns.word_pattern('abba', 'car truck truck car')
  end

  def test_false
    assert_equal false, WordPatterns.word_pattern('abab', 'apple banana banana apple')
  end

  def test_different_size
    assert_equal false, WordPatterns.word_pattern('aa', 'cat cat cat')
  end

  def test_to_be_true
    assert_equal true, WordPatterns.word_pattern('aaaa', 'cat cat cat cat')
  end

  def test_to_be_false
    assert_equal false, WordPatterns.word_pattern('aaaa', 'cat cat dog cat')
  end
end
