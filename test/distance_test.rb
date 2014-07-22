require 'MyVector'
require 'minitest/autorun'

class MyVectorTest < MiniTest::Unit::TestCase

  def setup
    @vec1 = MyVector[1, 1]
    @vec2 = MyVector[1, 2]
  end

  # def test_that_vector_plus_integer_is_valid
  #   assert_equal 3, @vec1.add_integer(2)
  # end

  def test_that_shovel_works_on_vector
    assert_equal Vector[1, 2, 3], @vec2 << 3
  end
end
