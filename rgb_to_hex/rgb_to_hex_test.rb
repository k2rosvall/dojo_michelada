# frozen_string_literal: true

gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'rgb_to_hex'

# Tests for RgbToHex class
class RgbToHexTest < Minitest::Test
  def test_rgb_white_to_hex
    assert_equal 'FFFFFF', RgbToHex.rgb(255, 255, 255)
  end

  def test_values_greater_than255
    assert_equal 'FFFFFF', RgbToHex.rgb(300, 255, 255)
  end

  def test_rgb_black_to_hex
    assert_equal '000000', RgbToHex.rgb(0, 0, 0)
  end

  def test_rgb_color_to_hex
    assert_equal '9400D3', RgbToHex.rgb(148, 0, 211)
  end

  def test_some_rgb_color_to_hex
    assert_equal '32A852', RgbToHex.rgb(50, 168, 82)
  end
end
