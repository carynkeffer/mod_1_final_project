require_relative './test_helper'

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
    assert_instance_of Array, shift.each_shift_value([05, 56, 66, 65], '012621')
    assert_equal [14, 62, 70, 66], shift.each_shift_value([05, 56, 66, 65], '012621')
    assert_equal [14, 62, 70, 66], shift.shifts("05665", '012621')
    assert_instance_of Hash, shift.shifts_by_name("05665", '012621')
    assert_instance_of Integer, shift.shifts_by_name("05665", '012621')["A"]
  end

  def test_ordinal_values
    shift = Shift.new

    assert_instance_of Array, shift.ordinal_values("hello world")
    assert_instance_of Array, shift.ordinal_values("hello-world!")
  end

  def test_ords_by_index
    shift = Shift.new

    shift.stubs(:message).returns("hello world")

    assert_instance_of Hash, shift.ords_by_index("hello world")
  end

  def test_counter_and_reverse_counter
    shift = Shift.new

    assert_equal 118, shift.counter(8, 110)
    assert_equal 97, shift.counter(5, 118)
    assert_equal 122, shift.counter(5, 117)
    assert_equal 112, shift.reverse_counter(5, 117)
    assert_equal 113, shift.reverse_counter(5, 118)
    assert_equal 117, shift.reverse_counter(5, 122)
  end

  def test_parse_index
    shift = Shift.new

    shift.stubs(:today).returns('012621')
    shift.stubs(:key).returns("05665")
    shift.stubs(:message).returns("!hello-world!")

    assert_instance_of Array, shift.parse_index("!hello-world!", "05665", '012621')
    assert_equal ["!", 114, 119, 122, 122, 121, "-", 107, 99, 98, 100, 114, "!"], shift.parse_index("!hello-world!", "05665", '012621')
  end

  def test_reverse_index
    shift = Shift.new

    shift.stubs(:today).returns('012621')
    shift.stubs(:key).returns("05665")
    shift.stubs(:message).returns("!hello-world!")

    assert_instance_of Array, shift.reverse_index("!hello-world!", "05665", '012621')
    assert_equal ["!", 120, 109, 120, 120, 101, "-", 105, 97, 104, 116, 112, "!"], shift.reverse_index("!hello-world!", "05665", '012621')
  end

  def test_it_can_return_encrypted
    shift = Shift.new

    shift.stubs(:key).returns("50960")
    shift.stubs(:today).returns("190121")
    shift.stubs(:message).returns("jthuq sxtaz")

    assert_equal "jthuq sxtaz", shift.to_letters("hello world", "50960", "190121")
  end

  def test_it_can_return_decrypted
    shift = Shift.new

    shift.stubs(:key).returns("50960")
    shift.stubs(:today).returns("190121")
    shift.stubs(:message).returns("jthuq sxtaz")

    assert_equal "hello world", shift.reverse_letters("jthuq sxtaz", "50960", "190121")
  end

end
