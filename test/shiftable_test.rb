require 'minitest/autorun'
require 'minitest/pride'
require './lib/shiftable'
require 'date'

class ShiftableTest < Minitest::Test
  include Shiftable

  def test_it_can_add
    num1 = 2
    num2 = 5

    assert_equal 7, sum_of(num1, num2)
  end

  def test_it_can_generate_random_5_digit
    assert_instance_of String, random_5_digit
  end

  def test_it_can_add_0_to_random_5_digit_if_4_digits

  end

end
