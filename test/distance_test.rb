require 'distance'
require 'minitest/autorun'

class Whatever < MiniTest::Unit::TestCase

  def setup

  end

  def test_that_vector_plus_integer_is_valid
    assert_equal 3, thing.add_integer(2)
  end
end
