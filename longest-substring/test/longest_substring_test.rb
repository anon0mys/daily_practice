require 'minitest/autorun'
require 'minitest/pride'
require './lib/longest_substring'

class SubstringTest < Minitest::Test
  def test_it_can_find_legth_of_one
    assert_equal 1, length_of_longest_substring('a')
  end

  def test_it_can_find_substrings_in_a_word
    assert_equal 3, length_of_longest_substring('abcabcbb')
  end

  def test_it_can_find_substrings_in_a_repeated_character
    assert_equal 1, length_of_longest_substring('bbbbb')
  end

  def test_it_can_find_substrings_in_the_middle_of_a_string
    assert_equal 3, length_of_longest_substring('pwwkew')
  end
end
