require 'minitest/autorun'
require 'minitest/pride'
require_relative 'fib'

class FibTest < Minitest::Test
  def test_fib_returns_zero_when_given_zero
    assert_equal 0, fib(0)
  end

  def test_fib_returns_three_when_given_four
    assert_equal 3, fib(4)
  end

  def test_fib_returns_34_when_given_nine
    assert_equal 34, fib(9)
  end
end
