require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'
require 'date'
require 'mocha/minitest'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new

    assert_instance_of Shift, shift
  end

  def test_it_has_attributes
    shift = Shift.new

    assert_equal 5, shift.key.length
  end

  # def test_it_can_generate_random_5_digit
  #   assert_instance_of String, random_5_digit
  # end
  #
  # def test_it_can_assign_indexes_to_keys
  #   num = mock("31456")
  #   assert_equal 31, a_key
  # end
end
