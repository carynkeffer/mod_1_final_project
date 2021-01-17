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

  def test_it_can_assign_index_to_all_keys
    shift = Shift.new

    shift.random_number_generator

    assert_equal 4, shift.all_keys.count
  end

  def test_it_can_find_todays_date
    shift = Shift.new

    assert_equal Date.today.strftime, shift.today
    assert_equal 2, shift.year.length
    assert_equal 2, shift.day.length
    assert_equal 2, shift.month.length
    assert_equal 6, shift.offset.length
  end
end
