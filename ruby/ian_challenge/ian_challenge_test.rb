require 'minitest/autorun'
require_relative 'ian_challenge'

class PalindroneTest < Minitest::Test
  def test_results_array
    assert_equal [505], Palindrome.palindrome
  end
end
