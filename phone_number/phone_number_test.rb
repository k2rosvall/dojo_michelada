# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'phone_number'

# Tests for ExtractId class
class PhoneNumberTest < Minitest::Test
  def test_case1
    number = PhoneNumber.create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
    assert_equal '(123) 456-7890', number
  end

  def test_case2
    number = PhoneNumber.create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
    assert_equal '(111) 111-1111', number
  end

  def test_case3
    number = PhoneNumber.create_phone_number([1, 2, 2, 4, 5, 6, 7, 8, 9, 0])
    assert_equal '(122) 456-7890', number
  end
end
