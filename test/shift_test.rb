require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new

    assert_instance_of Shift, shift
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
    assert_equal true, shift.ordinal_values("hello world").include?(32)
  end

  def test_it_has_a_message
    shift = Shift.new

    shift.write("hello world")

    assert_equal "hello world", shift.message
  end

  def test_add_ords_to_shifts
    skip
    shift = Shift.new

    assert_instance_of Array, shift.ordinal_values("hello world")
    assert_instance_of Array shift.char_shift_by
    # assert_equal 0, shift.add_ords_to_shifts.count
  end

end
