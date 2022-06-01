# frozen_string_literal: true

# Class to calculate difference between to IP addresses
class IpAddress
  def self.ips_between(start_ip, end_ip)
    convert_to_integer(end_ip) - convert_to_integer(start_ip)
  end

  def self.convert_to_integer(string)
    string.split('.').reduce(0) { |accumulator, value| value.to_i + (accumulator << 8) }
  end
end
