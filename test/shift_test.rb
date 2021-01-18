require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_it_can_create_offsets
    shift = Shift.new

    shift.stubs(:today).returns('012621')

    assert_equal (shift.today.to_i ** 2), shift.date_squared('012621')
    assert_instance_of Array, shift.date_squared_last(159289641)
    assert_equal 4, shift.date_squared_last(159289641).count
    assert_instance_of Array, shift.offsets('012621')
    assert_equal [9, 6, 4, 1], shift.offsets('012621')
  end

  def test_it_can_assign_index_to_all_keys
    shift = Shift.new

    shift.stubs(:today).returns('012621')
    shift.stubs(:key).returns("05665")

    assert_equal 4, shift.all_keys("05665").count
    assert_instance_of Array, shift.shifts([88, 81, 17, 74])
    assert_equal [97, 87, 21, 75], shift.shifts([88, 81, 17, 74])
    assert_instance_of Hash, shift.shifts_by_name
    assert_instance_of Integer, shift.shifts_by_name["A"]
  end
  #
  # def test_it_can_assign_shifts
  #   enigma = Enigma.new
  #   shift = Shift.new
  #
  #   assert_instance_of Array, shift.shifts([88, 81, 17, 74])
  #   assert_instance_of Hash, shift.shifts_by_name
  #   assert_instance_of Integer, shift.shifts_by_name["A"]
  # end
#   #
#   # def test_it_has_a_message
#   #   shift = Shift.new
#   #
#   #   shift.write("hello world")
#   #
#   #   assert_equal "hello world", shift.message
#   # end
#   #
#   # def test_ordinal_values
#   #   shift = Shift.new
#   #
#   #   shift.write("hello world")
#   #
#   #   assert_instance_of Array, shift.ordinal_values
#   #   assert_equal false, shift.ordinal_values.include?(32)
#   # end
#   #
#   # def test_ords_by_index
#   #   shift = Shift.new
#   #
#   #   shift.write("hello world")
#   #   shift.random_number_generator
#   #
#   #   assert_instance_of Hash, shift.ords_by_index
#   #   assert_equal shift.ordinal_values.count, shift.ords_by_index.count
#   # end
#   #
#   # def test_parse_out_index_ords
#   #   shift = Shift.new
#   #
#   #   shift.write("hello world")
#   #   shift.random_number_generator
#   #
#   #   assert_instance_of Array, shift.parse_index
#   # end
#   #
#   # def test_add_counter_that_resets_to_parse_indexes
#   #   shift = Shift.new
#   #
#   #   shift.write("hello world")
#   #   shift.random_number_generator
#   #
#   #   assert_equal 118, shift.counter(8, 110)
#   #   assert_equal 97, shift.counter(5, 118)
#   #   assert_equal 122, shift.counter(5, 117)
#   # end
#
end
