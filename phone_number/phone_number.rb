

class PhoneNumber
  def self.create_phone_number(digits)
    number = '('
    digits.each_with_index do |digit, index|
      number << ') ' if index == 3
      number << '-' if index == 6
      number << digit.to_s
    end
    number
  end
end
