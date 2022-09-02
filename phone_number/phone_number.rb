

class PhoneNumber
  def self.create_phone_number(digits)
    number = "(#{digits.join}"
    number.insert(4,") ")
    number.insert(9,"-")
  end
end
