require 'MyVector'
require 'minitest/autorun'

class MyVectorTest < MiniTest::Unit::TestCase

  def setup
    @vec1 = MyVector[1, 1]
    @vec2 = MyVector[1, 2]
    @vec3 = MyVector[3, 3]
    @vec4 = MyVector[4, 2]
  end

  # def test_that_vector_plus_integer_is_valid
  #   assert_equal 3, @vec1.add_integer(2)
  # end

  def test_that_shovel_works_on_vector
    assert_equal Vector[1, 2, 3], @vec2 << 3
  end

  def test_calculates_angle_btw_vectors
    assert_equal 0.3392926144540446, @vec3.calculate_angle(@vec4)
  end

  def test_class_method_angle_calculation
    assert_equal 0.3392926144540446, MyVector.calculate(MyVector[3, 3], MyVector[4, 2])
  end


end
