# frozen_string_literal: true

gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'count_ip_addresses'

# Tests for IpAddress class
class IpAddressTest < Minitest::Test
  def test_difference_of50
    assert_equal 50, IpAddress.ips_between('10.0.0.0', '10.0.0.50')
  end

  def test_difference_of246
    assert_equal 246, IpAddress.ips_between('20.0.0.10', '20.0.1.0')
  end
end
