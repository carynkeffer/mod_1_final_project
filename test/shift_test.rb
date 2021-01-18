require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new

    assert_instance_of Shift, shift
  end
  #
  # def test_it_can_assign_index_to_all_keys
  #
  #   shift = Shift.new
  #
  #   enigma.encrypt("hello world")
  #
  #   assert_equal 4, shift.all_keys.count
  #   assert_equal 4, shift.keys_to_integers.count
  # end
  #
  # def test_it_can_assign_offset
  #   shift = Shift.new
  #
  #   assert_equal (shift.today.to_i ** 2), shift.date_squared
  #   assert_instance_of Array, shift.offsets
  #   assert_equal 4, shift.offsets.count
  # end
  #
  # def test_it_can_assign_shifts
  #   shift = Shift.new
  #
  #   shift.random_number_generator
  #
  #   assert_instance_of Array, shift.shifts
  #   assert_instance_of Hash, shift.shifts_by_name
  #   assert_instance_of Integer, shift.shifts_by_name["A"]
  # end
  #
  # def test_it_has_a_message
  #   shift = Shift.new
  #
  #   shift.write("hello world")
  #
  #   assert_equal "hello world", shift.message
  # end
  #
  # def test_ordinal_values
  #   shift = Shift.new
  #
  #   shift.write("hello world")
  #
  #   assert_instance_of Array, shift.ordinal_values
  #   assert_equal false, shift.ordinal_values.include?(32)
  # end
  #
  # def test_ords_by_index
  #   shift = Shift.new
  #
  #   shift.write("hello world")
  #   shift.random_number_generator
  #
  #   assert_instance_of Hash, shift.ords_by_index
  #   assert_equal shift.ordinal_values.count, shift.ords_by_index.count
  # end
  #
  # def test_parse_out_index_ords
  #   shift = Shift.new
  #
  #   shift.write("hello world")
  #   shift.random_number_generator
  #
  #   assert_instance_of Array, shift.parse_index
  # end
  #
  # def test_add_counter_that_resets_to_parse_indexes
  #   shift = Shift.new
  #
  #   shift.write("hello world")
  #   shift.random_number_generator
  #
  #   assert_equal 118, shift.counter(8, 110)
  #   assert_equal 97, shift.counter(5, 118)
  #   assert_equal 122, shift.counter(5, 117)
  # end

end
