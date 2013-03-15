require 'test/unit'
require './palindrome'


class TestPalindrome < Test::Unit::TestCase

  def setup
    @palindrome = "Never odd or even"
    @no_palindrome = "How are you?"
  end

  def teardown
    # nothing really
  end

  def test_palindrome
    assert_equal true, @palindrome.palindrome?
    assert_equal false, @no_palindrome.palindrome?
  end

end
