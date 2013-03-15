require 'test/unit'
require './restaurant'


class TestRestaurant < Test::Unit::TestCase

  def setup
    @restaurant = Restaurant.new({rice: 3, noodles: 2})
  end

  def teardown
    # nothing really
  end

  def test_restaurant
    assert_equal 0, @restaurant.cost()
    assert_equal 15, @restaurant.cost({rice: 1, noodles: 1},
                                      {rice: 2, noodles: 2})
  end

end
