require 'minitest/autorun'
require_relative 'inclass52function'

class ThingsTest < Minitest::Test
  def test_add
    assert_equal 2, add(1, 1)
    assert_equal 5, add(3, 2)
    assert_equal -2, add(-1, -1)
    assert_equal 0, add(0, 0)
    assert_equal 0.5, add(0, 0.5)
  end

  def test_divide
    assert_equal 2, divide(4, 2)
    assert_equal 7, divide(21, 3)
    assert_equal -2, divide(-4, 2)
    assert_equal 0, divide(0, 2)
    assert_equal -0.5, divide(-0.5, 1)
  end

  def test_sum_array
    assert_equal 10, sum_array([1, 2, 3, 4, 0])
    assert_equal -15, sum_array([-1, -2, -3, -4, -5])
    assert_equal 0, sum_array([0, 0, 0, 0, 0])
    assert_equal 0.5, sum_array([0, 0, 0, 0, 0.5])
  end

  def test_split_string
    assert_equal ["a", "b", "c"], split_string("abc", "")
    assert_equal ["a", "b", "c"], split_string("a,b,c", ",")
    assert_equal ["q", "z", "u"], split_string("q,z,u", ",")
    assert_equal ["pine", "apple"], split_string("pine,apple", ",")
  end

  def test_distance
    assert_in_delta 1.414, distance(0, 0, 1, 1), 0.001
    assert_in_delta 2.828, distance(0, 0, 2, 2), 0.001
    assert_in_delta 1.414, distance(0, 0, -1, -1), 0.001
    assert_in_delta 14.142, distance(0, 0, 10, 10), 0.001
    assert_in_delta 1414.213, distance(0, 0, 1000, 1000), 0.001
  end

end

