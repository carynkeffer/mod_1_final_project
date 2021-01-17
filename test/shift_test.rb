require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'

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

  def test_it_can_assign_index_to_all_keys
    shift = Shift.new

    shift.random_number_generator

    assert_equal 4, shift.all_keys.count
    assert_equal 4, shift.keys_to_integers.count
  end

  def test_it_can_find_todays_date
    shift = Shift.new

    assert_equal Time.now.strftime("%d%m%y"), shift.today
  end

  def test_it_can_offset
    shift = Shift.new

    assert_equal (shift.today.to_i ** 2), shift.date_squared
    assert_instance_of Array, shift.offsets
    assert_equal 4, shift.offsets.count
  end

  def test_it_can_shift
    shift = Shift.new

    shift.random_number_generator

    assert_instance_of Array, shift.shifts
    assert_instance_of Hash, shift.shifts_by_name
    assert_instance_of Integer, shift.shifts_by_name["A"]
  end

  def test_ordinal_values
    shift = Shift.new

    assert_instance_of Array, shift.ordinal_values("hello world")
  end
end
