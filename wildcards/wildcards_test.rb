# frozen_string_literal: true

gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'wildcards'

# Tests for IpAddress class
class WildcardTest < Minitest::Test
  def test_one_character
    assert_equal %w[0 1], Wildcard.possibilities('?')
  end

  def test_with_more_characters
    assert_equal %w[1010 1011], Wildcard.possibilities('101?')
  end

  def test_both_characters_are_wildcards
    assert_equal %w[00 01 10 11], Wildcard.possibilities('??')
  end

  def test_more_combinations
    assert_equal %w[1000 1001 1010 1011], Wildcard.possibilities('10??')
  end

  def test_another_combination
    assert_equal %w[1010 1011 1110 1111], Wildcard.possibilities('1?1?')
  end
end
