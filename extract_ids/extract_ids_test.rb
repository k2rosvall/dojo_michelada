# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'extract_ids'

# Tests for ExtractId class
class ExtractIdTest < Minitest::Test
  DATA = {
    id: 1,
    items: [
      { id: 3 },
      { id: 4, items: [
        { id: 6 },
        { id: 7 },
        { id: 8, items: [{ id: 9 }] }
      ] }
    ]
  }.freeze

  def test_extract_ids_codewars
    assert_equal ExtractId.extract_ids(DATA), [1, 3, 4, 6, 7, 8, 9]
  end

  def test_extract_one_id
    assert_equal ExtractId.extract_ids({ id: 2 }), [2]
  end

  def test_extract_two_ids
    assert_equal ExtractId.extract_ids({ id: 1, items: [id: 2] }), [1, 2]
  end
end
