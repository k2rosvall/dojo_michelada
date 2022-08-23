# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'split_hash'

# Tests for ExtractId class
class SplitHashTest < Minitest::Test
  def test_only_given_one_key
    hash = SplitHash.split_hash_by_key({ a: 1, b: 2, c: 3, d: 4, e: 5 }, :c)
    assert_equal [{ a: 1, b: 2 }, { c: 3, d: 4, e: 5 }], hash
  end

  def test_given_two_keys
    hash = SplitHash.split_hash_by_key({ a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }, :b, :f)
    assert_equal [{ a: 1 }, { b: 2, c: 3, d: 4, e: 5 }, { f: 6 }], hash
  end

  def test_given_string_as_key
    hash = SplitHash.split_hash_by_key({ 'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6 }, 'd')
    assert_equal [{ 'a' => 1, 'b' => 2, 'c' => 3 }, { 'd' => 4, 'e' => 5, 'f' => 6 }], hash
  end

  def test_return_same_hash
    hash = SplitHash.split_hash_by_key({ a: 1, b: 2 }, :a)
    assert_equal [{ a: 1, b: 2 }], hash
  end

  def test_raises_error
    assert_raises(Exception) do
      SplitHash.split_hash_by_key({ a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }, 'b')
    end
  end
end
