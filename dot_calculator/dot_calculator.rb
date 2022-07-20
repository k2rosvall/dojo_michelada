# frozen_string_literal: true

# Class to calculate
class DotCalculator
  def self.dot_calculator(equation)
    @operation = equation.split
    '.' * value(0).public_send(operator, value(2))
  end

  def self.operator
    @operation[1] == '//' ? '/' : @operation[1]
  end

  def self.value(index)
    @operation[index].chars.count
  end
end
