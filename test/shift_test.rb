require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/shift'
require './lib/enigma'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new

    assert_instance_of Shift, shift
  end

  # def test_it_has_attributes
  #   enigma = Enigma.new
  #
  #   enigma.encrypt("hello world", "34010", "170121")
  #
  #   shift = Shift.new(enigma.message, enigma.key, enigma.date)
  #
  #   assert_equal "hello world", shift.message
  # end

  def test_it_can_create_offsets
    shift = Shift.new

    shift.stubs(:today).returns('012621')
    shift.stubs(:date_squared).returns(159289641)

    assert_equal (shift.today.to_i ** 2), shift.date_squared('012621')
    assert_instance_of Array, shift.offsets(159289641)
    assert_equal 4, shift.offsets(159289641).count
  end

  def test_it_can_assign_index_to_all_keys
    enigma = Enigma.new
    shift = Shift.new

    encrypt = enigma.encrypt("hello world")

    assert_equal 4, shift.all_keys(encrypt["key:"]).count
    # assert_equal 4, shift.keys_to_integers(["88", "81", "17", "74"]).count
  end

  def test_it_can_assign_shifts
    enigma = Enigma.new
    shift = Shift.new

    assert_instance_of Array, shift.shifts([88, 81, 17, 74])
    assert_instance_of Hash, shift.shifts_by_name
    assert_instance_of Integer, shift.shifts_by_name["A"]
  end
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
