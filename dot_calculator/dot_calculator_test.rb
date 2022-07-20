# frozen_string_literal: true

gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'dot_calculator'

# Tests for DotCalculator Class
class DotCalculatorTest < Minitest::Test
  def test_sum
    assert_equal '....................', DotCalculator.dot_calculator('..... + ...............')
  end

  def test_substraction
    assert_equal '..', DotCalculator.dot_calculator('..... - ...')
  end

  def test_substraction2
    assert_equal '....', DotCalculator.dot_calculator('..... - .')
  end

  def test_multiply1
    assert_equal '...............', DotCalculator.dot_calculator('..... * ...')
  end

  def test_multiply2
    assert_equal '..........', DotCalculator.dot_calculator('..... * ..')
  end

  def test_divide1
    assert_equal '..', DotCalculator.dot_calculator('..... // ..')
  end

  def test_divide2
    assert_equal '.....', DotCalculator.dot_calculator('..... // .')
  end
end
