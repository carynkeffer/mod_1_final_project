require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test
  def test_it_exists
    key = Key.new

    assert_instance_of Key, key
  end

  def test_random_number_generator
    key = Key.new

    assert_equal 5, key.random_number_generator.length
  end

  def test_it_can_assign_index_to_all_keys
    key = Key.new

    key.random_number_generator

    assert_equal 4, key.all_keys.count
    assert_equal 4, key.keys_to_integers.count
  end

end
