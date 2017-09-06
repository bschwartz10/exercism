require 'minitest/autorun'
require_relative 'fibonacci'

# Common test data version: 1.0.0 65756b1
class FibonacciTest < Minitest::Test
  def test_first_fib
    assert_equal 0, Fibonacci.compute(0)
  end

  def test_two_returns_one
    assert_equal 1, Fibonacci.compute(2)
    assert_equal 2, Fibonacci.compute(3)
    assert_equal 3, Fibonacci.compute(4)
    assert_equal 89, Fibonacci.compute(11)
    assert_equal 144, Fibonacci.compute(12)
    assert_equal 377, Fibonacci.compute(14)
  end
end
