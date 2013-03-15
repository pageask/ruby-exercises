require 'test/unit'
require './color'


class TestColor < Test::Unit::TestCase

  def setup
    @color1 = Color.new(42, 42, 42)
    @color2 = Color.new(210, 210, 210)
    @color3 = Color.new(42, 21, 58)
    @color4 = Color.new(240, 41, 25)
  end

  def teardown
    # nothing really
  end

  def test_color
    assert_equal true, @color1.enough_contrast(@color2)
    assert_equal false, @color3.enough_contrast(@color4)
  end

end
