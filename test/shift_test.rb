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

    assert_nil shift.key
  end

  def test_random_number_generator
    shift = Shift.new

    assert_equal 5, shift.random_number_generator.length
  end

  def test_it_can_assign_index_0_1_to_a_key
    shift = Shift.new

    shift.random_number_generator

    assert_equal shift.key[0..1], shift.a_key
  end
end
