require 'test/unit'
require './array_of_fixnums'


class TestArrayOfFixnums < Test::Unit::TestCase

  def setup
    @fixnums = [1, 2, 3]
    @no_fixnums = [1, 2, 3, "Ruby"]
  end

  def teardown
    # nothing really
  end

  def test_array_of_fixnums
    assert_equal true, @fixnums.all_fixnums?
    assert_equal false, @no_fixnums.all_fixnums?
  end

end
