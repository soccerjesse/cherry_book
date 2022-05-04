require 'minitest/autorun'
require_relative '../lib/fizz_buzz.rb'

class FizzBuzzTest < Minitest::Test
  def test_number
    assert_equal '1', number(1)
    assert_equal '2', number(2)
    assert_equal 'Fizz', number(3)
    assert_equal '4', number(4)
    assert_equal 'Buzz', number(5)
    assert_equal 'Fizz', number(6)
    assert_equal 'Fizz Buzz', number(15)
  end
end