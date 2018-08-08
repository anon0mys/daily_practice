require 'minitest/autorun'
require 'minitest/pride'
require './lib/roman_numerals'
require 'pry'

class RomanNumeralTest < Minitest::Test
  def test_it_can_decode_ones
    assert_equal 3, roman_to_int('III')
  end

  def test_it_can_decode_fives
    assert_equal 4, roman_to_int('IV')
  end

  def test_it_can_decode_nines
    assert_equal 9, roman_to_int('IX')
  end
end
