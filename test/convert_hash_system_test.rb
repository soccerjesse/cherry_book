require 'minitest/autorun'
require_relative '../lib/convert_hash_system'

class ConvertHashSystemTest < Minitest::Test
  def test_convert_hash_system
    old_syntax = <<~TEXT
      {
        :name => 'alice',
        :age => 23,
        :gender => :female
      }
    TEXT

    expected = <<~TEXT
      {
        name: 'alice',
        age: 23,
        gender: :female
      }
    TEXT

    assert_equal expected, convert_hash_system(old_syntax)

  end
end