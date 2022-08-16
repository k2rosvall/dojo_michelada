# frozen_string_literal: true

# Extracts the ids from data
class ExtractId
  def self.extract_ids(data, ids = [])
    data.each do |key, value|
      if key == :id
        ids << value
      else
        value.each { |element| extract_ids(element, ids) }
      end
    end
    ids
  end
end
