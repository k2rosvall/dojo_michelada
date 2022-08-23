# frozen_string_literal: true
require "debug"
# Splits a hash by key
class SplitHash

  def self.split_hash_by_key(hash, *keys)
    raise StandardError unless valid_keys(hash, keys)

    result = []
    temp = {}

    if keys.size == 1
      result << split_left(hash, keys.first)
      result << split_right(hash, keys.first)
      return result.delete_if(&:empty?)
    end

    keys.each_with_index do |key, index|
      if index.zero?
        result << split_left(hash, key)
        temp = split_right(hash, key)
      else
        result << split_left(temp, key)
        temp = split_right(temp, key)
        result << temp if keys.last == key
      end
    end
    result
  end
  
  def self.split_left(hash, element)
    hash.select{ |key, _value| key < element }
  end
  
  def self.split_right(hash, element)
    hash.select{ |key, _value| key >= element }
  end

  def self.valid_keys(hash, keys)
    keys.any? { |key| hash.keys.include?(key) }
  end
end


