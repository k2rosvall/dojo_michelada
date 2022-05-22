# frozen_string_literal: true

# Converts RGB values to Hexadecimal values
class RgbToHex
  MAX_VALUE = 255

  def self.rgb(red, green, blue)
    [red, green, blue].map do |color|
      color = MAX_VALUE if color > MAX_VALUE
      format('%02X', color)
    end.join
  end
end
