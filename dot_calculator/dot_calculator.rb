# frozen_string_literal: true

# Class to calculate
class DotCalculator
  def self.dot_calculator(equation)
    factors = equation.split
    sign = factors[1]
    operand1 = factors[0].chars.count
    operand2 = factors[2].chars.count
    calculate(operand1, sign, operand2)
  end

  def self.calculate(operand1, operation, operand2)
    case operation
    when '+'
      sum(operand1, operand2)
    when '-'
      substract(operand1, operand2)
    when '//'
      divide(operand1, operand2)
    when '*'
      multiply(operand1, operand2)
    end
  end

  def self.sum(first_value, second_value)
    result = first_value + second_value
    '.' * result
  end

  def self.substract(first_value, second_value)
    result = first_value - second_value
    '.' * result
  end

  def self.divide(first_value, second_value)
    result = first_value / second_value
    '.' * result
  end

  def self.multiply(first_value, second_value)
    result = first_value * second_value
    '.' * result
  end
end
